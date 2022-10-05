//*************************************
//----------------COMMANDER--------------
//*************************************/

/datum/job/command/commander/upp
	title = JOB_UPP_KOL_OFFICER
	gear_preset = /datum/equipment_preset/upp/officer/kolonel

//*************************************
//----------------SYNTHETIC-------------
//*************************************/

/datum/job/civilian/synthetic/upp
	title = JOB_UPP_COMBAT_SYNTH
	gear_preset = /datum/equipment_preset/upp/synth

//*************************************
//---------EXECUTIVE OFFICER-----------
//*************************************/
/datum/job/command/executive/upp
	title = JOB_UPP_MAY_OFFICER
	gear_preset = /datum/equipment_preset/upp/officer/major

//*************************************
//-------------STAFF OFFICER------------
//*************************************/
/datum/job/command/bridge/upp
	title = JOB_UPP_SRLT_OFFICER
	gear_preset = /datum/equipment_preset/upp/officer/senior

//*************************************
//----------------CREWMAN---------------
//*************************************/
/datum/job/command/tank_crew/upp
	title = JOB_UPP_CREWMAN
	gear_preset = /datum/equipment_preset/upp/tank

//*************************************
//------------MILITARY POLICE----------
//*************************************/
/datum/job/command/police/upp
	title = JOB_UPP_POLICE
	gear_preset = /datum/equipment_preset/upp/military_police

//*************************************
//----------------PILOT----------------
//*************************************/
/datum/job/command/pilot/upp // TODO
	title = JOB_WO_PILOT
	gear_preset = /datum/equipment_preset/wo/mortar_crew

//*************************************
//---------REQUISITIONS OFFICER--------
//*************************************/
/datum/job/logistics/requisition/upp // TODO
	title = JOB_WO_CHIEF_REQUISITION
	gear_preset = /datum/equipment_preset/wo/quartermaster

//*************************************
//--------CHIEF MEDICAL OFFICER--------
//*************************************/
/datum/job/civilian/professor/upp // TODO
	title = JOB_WO_CMO
	gear_preset = /datum/equipment_preset/wo/head_surgeon

//*************************************
//----------------DOCTOR---------------
//*************************************/
/datum/job/civilian/doctor/upp
	title = JOB_UPP_LT_DOKTOR
	gear_preset = /datum/equipment_preset/upp/doctor

//*************************************
//---------------RESEARCHER-------------
//*************************************/
/datum/job/civilian/researcher/upp // TODO
	title = JOB_WO_RESEARCHER
	gear_preset = /datum/equipment_preset/wo/chemist

//*************************************
//------------CHIEF ENGINEER-----------
//*************************************/
/datum/job/logistics/engineering/upp // TODO
	title = JOB_WO_CHIEF_ENGINEER
	gear_preset = /datum/equipment_preset/wo/bcm

//*************************************
//---------------MAINT TECH-------------
//*************************************/
/datum/job/logistics/tech/maint/upp // TODO
	title = JOB_WO_ORDNANCE_TECH
	supervisors = "the bunker crew master and the quartermaster"
	gear_preset = /datum/equipment_preset/wo/bc

//*************************************
//--------------CARGO TECH-------------
//*************************************/
/datum/job/logistics/cargo/upp // TODO
	title = JOB_WO_REQUISITION
	supervisors = "the bunker crew master and the quartermaster"
	selection_class = "job_bunker_crew"
	gear_preset = /datum/equipment_preset/wo/cargo

//*************************************
//-----------------LIAISON---------------
//*************************************/
/datum/job/civilian/liaison/upp
	title = JOB_UPP_REPRESENTATIVE
	supervisors = "the State"
	gear_preset = /datum/equipment_preset/upp/representative
