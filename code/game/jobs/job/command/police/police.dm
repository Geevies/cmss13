//Military Police
/datum/job/command/police
	title = JOB_POLICE
	total_positions = 0
	spawn_positions = 0
	allow_additional = 0
	scaled = 0
	selection_class = "job_mp"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/uscm_ship/uscm_police/mp
	entry_message_body = "You are held by a higher standard and are required to obey not only the server rules but the <a href='"+URL_WIKI_LAW+"'>Marine Law</a>. Failure to do so may result in a job ban or server ban. Your primary job is to maintain peace and stability aboard the ship. Marines can get rowdy after a few weeks of cryosleep! In addition, you are tasked with the security of high-ranking personnel, including the command staff. Keep them safe!"

AddTimelock(/datum/job/command/police, list(
	JOB_POLICE_ROLES = 3 HOURS
))

/obj/effect/landmark/start/police
	name = JOB_POLICE
	job = /datum/job/command/police
