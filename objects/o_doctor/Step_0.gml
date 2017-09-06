/// @description Insert description here
// emergency 
// event_inherited
if (leaved) exit;
if (o_control.game_pause) exit;

// destroy violence
if (home.hammer && !home.hammer.secretDestroy) {
	outside = false;
	state = "fighting";
	exit;
}


if (!o_hospital.removed) {
	if (o_timer.time % duration_hour == 0 && o_timer.hour == 8) {
		var xx = path_get_x(p_doctor_home_hospital, 0);
		var yy = path_get_y(p_doctor_home_hospital, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_doctor_move);
		inst.path = p_doctor_home_hospital;
	}

	if (o_timer.time % duration_hour == 0 && o_timer.hour == 16) {
		var xx = path_get_x(p_doctor_hospital_home, 0);
		var yy = path_get_y(p_doctor_hospital_home, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_doctor_move);
		inst.path = p_doctor_hospital_home;
	}
}

/*
//event_inherited
SetStateAtTime(0, 7, "zzz", false);
SetStateAtTime(7, 8, "breakfast", false);
SetStateAtTime(8, 16, "hospital", true);
SetStateAtTime(16, 24, "at home", false);