/// @description Insert description here
// event_inherited
if (leaved) exit;
if (o_control.game_pause) exit;

// destroy violence
if (home.hammer && !home.hammer.secretDestroy) {
	outside = false;
	state = "fighting";
	exit;
}

// special event: no rescue
if (o_timer.hour == 2) {
	if (o_hospital.removed) {
		global.reason = "住户病情突然发作。因为无法送往医院不治身亡。";
		GameOver();
	}
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 9) {
	var xx = path_get_x(p_patient_home_hospital, 0);
	var yy = path_get_y(p_patient_home_hospital, 0);
	var inst = instance_create_layer(xx, yy, "Instances", o_patient_move);
	inst.path = p_patient_home_hospital;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 11) {
	var xx = path_get_x(p_patient_hospital_park, 0);
	var yy = path_get_y(p_patient_hospital_park, 0);
	var inst = instance_create_layer(xx, yy, "Instances", o_patient_move);
	inst.path = p_patient_hospital_park;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 14) {
	var xx = path_get_x(p_patient_park_home, 0);
	var yy = path_get_y(p_patient_park_home, 0);
	var inst = instance_create_layer(xx, yy, "Instances", o_patient_move);
	inst.path = p_patient_park_home;
}

/*
SetStateAtTime(0, 6, "zzz", false);
SetStateAtTime(6, 8 , "exercise", true);
SetStateAtTime(8, 15, "???", false);
SetStateAtTime(15,17, "exercise", true);
SetStateAtTime(17,22, "???", false);
SetStateAtTime(22,24, "zzz", false);

if (home.hammer) show_message(state);
