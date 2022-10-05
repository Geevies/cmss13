/datum/job/marine/rto
	title = JOB_SQUAD_RTO
	total_positions = 8
	spawn_positions = 8
	allow_additional = 1
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT|ROLE_ADD_TO_SQUAD
	gear_preset = /datum/equipment_preset/uscm/rto
	entry_message_body = "You are the Radio Telegraph Operator. Your task is to work as a forward observer for overwatch, dropship pilots and mortar operators to provide fire support, and facilitate communications between groundside marines and shipside departments such as CIC and Requisitions."

/datum/job/marine/rto/generate_entry_conditions(mob/living/carbon/human/H)
	. = ..()
	H.important_radio_channels += JTAC_FREQ

/datum/job/marine/rto/upp
	title = JOB_UPP_RTO
	flags_startup_parameters = ROLE_ADD_TO_SQUAD
	gear_preset = /datum/equipment_preset/upp/rto/cryo

AddTimelock(/datum/job/marine/rto, list(
	JOB_SQUAD_ROLES = 8 HOURS
))

/obj/effect/landmark/start/marine/rto
	name = JOB_SQUAD_RTO
	icon_state = "rto_spawn"
	job = /datum/job/marine/rto
