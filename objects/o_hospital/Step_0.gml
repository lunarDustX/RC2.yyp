/// @description number of patient
if (removed) exit;
if (o_timer.time % duration_day == 1) {
	patient = clamp(patient + choose(-1, 0, 1), 0, 6);
	money_remove = base_money + patient;
	description = "住院人数： " + string(patient);
}
