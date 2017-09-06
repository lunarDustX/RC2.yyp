/// @description Timetable
// event_inherited
if (leaved) exit;
if (o_control.game_pause) exit;

// destroy violence
if (home.hammer && !home.hammer.secretDestroy) {
	outside = false;
	state = "fighting";
	exit;
}
//event_inherited
if (o_timer.time % duration_hour == 0 && o_timer.hour == 7) {
	var xx = path_get_x(p_student_home_school, 0);
	var yy = path_get_y(p_student_home_school, 0);
	var inst = instance_create_layer(xx, yy, "Instances", o_student_move);
	inst.path = p_student_home_school;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 12) {
		var xx = path_get_x(p_student_school_shop, 0);
		var yy = path_get_y(p_student_school_shop, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_student_move);
		inst.path = p_student_school_shop;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 13) {
		var xx = path_get_x(p_student_shop_school, 0);
		var yy = path_get_y(p_student_shop_school, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_student_move);
		inst.path = p_student_shop_school;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 17) {
		var xx = path_get_x(p_student_school_shop, 0);
		var yy = path_get_y(p_student_school_shop, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_student_move);
		inst.path = p_student_school_shop;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 18) {
		var xx = path_get_x(p_student_shop_home, 0);
		var yy = path_get_y(p_student_shop_home, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_student_move);
		inst.path = p_student_shop_home;
}

/*
if (!IsWeekend()) { // weekday
	SetStateAtTime(0, 7, "zzz", false);
	SetStateAtTime(7, 17, "at school", true);
	SetStateAtTime(17, 18, "at shop", true);
	SetStateAtTime(18, 20, "playing games", false);
	SetStateAtTime(20, 24, "rock & roll", false);

} else { // weekends
	SetStateAtTime(2, 12, "zzz", false);
	SetStateAtTime(12, 18, "rock & roll", false);
	SetStateAtTime(18, 24, "home party", false);
	SetStateAtTime(0, 2, "home party", false);
}
