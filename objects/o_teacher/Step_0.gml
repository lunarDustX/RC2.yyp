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

if (o_timer.time % duration_hour == 0 && o_timer.hour == 6) {
	var xx = path_get_x(p_teacher_home_school, 0);
	var yy = path_get_y(p_teacher_home_school, 0);
	var inst = instance_create_layer(xx, yy, "Instances", o_teacher_move);
	inst.path = p_teacher_home_school;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 19) {
	var xx = path_get_x(p_teacher_dinner_walk, 0);
	var yy = path_get_y(p_teacher_dinner_walk, 0);
	var inst = instance_create_layer(xx, yy, "Instances", o_teacher_move);
	inst.path = p_teacher_dinner_walk;
}
/*
//event_inherited
SetStateAtTime(0, 6, "zzz", false);
SetStateAtTime(6, 7, "morning exercise", true);
SetStateAtTime(7, 11, "reading", false);
SetStateAtTime(11, 13, "rest", false);
SetStateAtTime(13, 14, "at bookstore", true);
SetStateAtTime(14, 17, "at park", true);
SetStateAtTime(17, 18, "dinner", false);
SetStateAtTime(18, 19, "exercise", true);
SetStateAtTime(19, 21, "reading", false);
SetStateAtTime(21, 22, "watching TV", false);
SetStateAtTime(22, 24, "zzz", false);

