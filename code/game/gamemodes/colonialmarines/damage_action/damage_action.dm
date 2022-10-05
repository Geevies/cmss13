/datum/game_mode/colonialmarines/upp
	name = "Damage Action"
	config_tag = "Damage Action"

	role_mappings = list(
		/datum/job/command/commander/upp = JOB_CO,
		/datum/job/command/executive/upp = JOB_XO,
		/datum/job/civilian/synthetic/upp = JOB_SYNTH,
		/datum/job/command/bridge/upp = JOB_SO,
		/datum/job/command/tank_crew/upp = JOB_CREWMAN,
		/datum/job/command/police/upp = JOB_POLICE,
		/datum/job/command/pilot/upp = JOB_PILOT,
		/datum/job/logistics/requisition/upp = JOB_CHIEF_REQUISITION,
		/datum/job/civilian/professor/upp = JOB_CMO,
		/datum/job/civilian/doctor/upp = JOB_DOCTOR,
		/datum/job/civilian/researcher/upp = JOB_RESEARCHER,
		/datum/job/logistics/engineering/upp = JOB_CHIEF_ENGINEER,
		/datum/job/logistics/tech/maint/upp = JOB_MAINT_TECH,
		/datum/job/logistics/cargo/upp = JOB_CARGO_TECH,
		/datum/job/civilian/liaison/upp = JOB_CORPORATE_LIAISON,
		/datum/job/marine/leader/upp = JOB_SQUAD_LEADER,
		/datum/job/marine/specialist/upp = JOB_SQUAD_SPECIALIST,
		/datum/job/marine/smartgunner/upp = JOB_SQUAD_SMARTGUN,
		/datum/job/marine/medic/upp = JOB_SQUAD_MEDIC,
		/datum/job/marine/engineer/upp = JOB_SQUAD_ENGI,
		/datum/job/marine/standard/upp = JOB_SQUAD_MARINE
	)

/datum/game_mode/colonialmarines/upp/get_roles_list()
	return ROLES_DAMAGE_ACTION
