/obj/item/hardpoint/gun/frontalcannon
	name = "Bleihagel RE-RE700 Frontal Cannon"
	desc = "The marketing department over at Bleihagel would have you believe that the RE-RE700 is an original design. However, experts who pried the cover off the cannon have discovered an object with a striking similarity to the popular M56 Cupola. It is still unknown why the cannon has two barrels."
	icon = 'icons/obj/vehicles/hardpoints/apc.dmi'

	icon_state = "front_cannon"
	disp_icon = "apc"
	disp_icon_state = "frontalcannon"
	firing_sounds = list('sound/weapons/gun_smartgun1.ogg', 'sound/weapons/gun_smartgun2.ogg', 'sound/weapons/gun_smartgun3.ogg')

	slot = HDPT_SECONDARY

	point_cost = 400
	health = 350
	damage_multiplier = 0.125
	cooldown = 16
	accuracy = 0.7
	firing_arc = 90
	range_multiplier = 3
	var/burst_amount = 4

	origins = list(0, -2)

	ammo = new /obj/item/ammo_magazine/hardpoint/m56_cupola/frontal_cannon
	max_clips = 1

	muzzle_flash_pos = list(
		"1" = list(-13, 46),
		"2" = list(16, -76),
		"4" = list(62, -26),
		"8" = list(-62, -26)
	)

/obj/item/hardpoint/gun/frontalcannon/fire(var/mob/user, var/atom/A)
	if(ammo.current_rounds <= 0)
		return

	next_use = world.time + cooldown * owner.misc_multipliers["cooldown"]

	for(var/bullets_fired = 1, bullets_fired <= burst_amount, bullets_fired++)
		var/atom/T = A
		if(!prob((accuracy * 100) / owner.misc_multipliers["accuracy"]))
			T = get_step(get_turf(A), pick(cardinal))
		if(LAZYLEN(firing_sounds))
			playsound(get_turf(src), pick(firing_sounds), 60, 1)
		fire_projectile(user, T, TRUE)
		if(ammo.current_rounds <= 0)
			break
		if(bullets_fired < burst_amount)	//we need to sleep only if there are more bullets to shoot in the burst
			sleep(3)
	to_chat(user, SPAN_WARNING("[src] Ammo: <b>[SPAN_HELPFUL(ammo ? ammo.current_rounds : 0)]/[SPAN_HELPFUL(ammo ? ammo.max_rounds : 0)]</b> | Mags: <b>[SPAN_HELPFUL(LAZYLEN(backup_clips))]/[SPAN_HELPFUL(max_clips)]</b>"))