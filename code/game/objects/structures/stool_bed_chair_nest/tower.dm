/obj/structure/bed/chair/tower
	name = "watchtower"
	desc = "A rickety watchtower, granting anyone within increased line of sight over the battlefield."
	icon = 'icons/obj/structures/structures32x92.dmi'
	icon_state = "watchtower"
	buckling_y = 60
	can_buckle = FALSE
	climbable = TRUE
	climb_delay = 5 SECONDS
	layer = STRUCTURE_BACKGROUND_LAYER
	density = TRUE
	buckling_sound = null

	health = 450

/obj/structure/bed/chair/tower/Initialize()
	. = ..()
	overlays += image(icon, src, "[icon_state]_fg", STRUCTURE_FOREGROUND_LAYER)

/obj/structure/bed/chair/tower/examine(mob/user)
	. = ..()
	to_chat(user, SPAN_WARNING("\The [src] has <b>[health]/[initial(health)]</b> health remaining."))

/obj/structure/bed/chair/tower/handle_rotation()
	return

/obj/structure/bed/chair/tower/can_climb(mob/living/user)
	if(buckled_mob)
		to_chat(user, SPAN_WARNING("There's already someone in \the [src]!"))
		return
	return ..()

/obj/structure/bed/chair/tower/do_climb(mob/living/user, mods)
	. = ..()
	buckle_mob(user, user)

/obj/structure/bed/chair/tower/manual_unbuckle(mob/user)
	if(buckled_mob)
		if(buckled_mob != user)
			to_chat(user, SPAN_WARNING("You can't reach up to [buckled_mob]!"))
			return
		else
			buckled_mob.visible_message(SPAN_WARNING("[buckled_mob] starts climbing down \the [src]!"))
			if(!do_after(user, 5 SECONDS, INTERRUPT_ALL, BUSY_ICON_FRIENDLY))
				return
			buckled_mob.visible_message(SPAN_WARNING("[buckled_mob] climbs down \the [src]!"))
	return ..()

/obj/structure/bed/chair/tower/afterbuckle(mob/M)
	. = ..()
	if(buckled_mob == M)
		M.layer = STRUCTURE_MOB_LAYER
	else
		M.layer = initial(M.layer)
		M.forceMove(get_step(src, pick(cardinal)))

/obj/structure/bed/chair/tower/send_buckling_message(mob/M, mob/user)
	return

/obj/structure/bed/chair/tower/send_unbuckling_message(mob/M, mob/user)
	return

/obj/structure/bed/chair/tower/handle_buckle_barrier()
	return TRUE

/obj/structure/bed/chair/tower/attackby(obj/item/I, mob/user)
	if(iswelder(I))
		var/obj/item/tool/weldingtool/welder = I

		if(!welder.remove_fuel(2, user))
			return

		user.visible_message(SPAN_NOTICE("[user] begins repairing damage to \the [src]."), SPAN_NOTICE("You begin repairing the damage to \the [src]."))
		playsound(src.loc, 'sound/items/Welder2.ogg', 25, TRUE)

		var/welding_time = skillcheck(user, SKILL_CONSTRUCTION, 2) ? 5 SECONDS : 10 SECONDS
		if(!do_after(user, welding_time, INTERRUPT_NO_NEEDHAND|BEHAVIOR_IMMOBILE, BUSY_ICON_FRIENDLY, src) || !welder.isOn())
			return

		user.visible_message(SPAN_NOTICE("[user] repairs some damage on \the [src]."), SPAN_NOTICE("You repair \the [src]."))
		health = initial(health)
		playsound(src.loc, 'sound/items/Welder2.ogg', 25, TRUE)
		return
	return ..()

/obj/structure/bed/chair/tower/attack_alien(mob/living/carbon/Xenomorph/xeno)
	if(xeno.a_intent == INTENT_HARM)
		xeno.animation_attack_on(src)
		playsound(src, hit_bed_sound, 25, 1)
		health -= pick(xeno.melee_damage_lower, xeno.melee_damage_upper)
		if(health <= 0)
			xeno.visible_message(SPAN_DANGER("[xeno] slices [src] apart!"),
			SPAN_DANGER("You slice [src] apart!"), null, 5, CHAT_TYPE_XENO_COMBAT)
			unbuckle()
			destroy()
			return XENO_ATTACK_ACTION
	return XENO_NONCOMBAT_ACTION
