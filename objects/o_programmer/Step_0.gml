/// @description Timetable
//event_inherited();
if (leaved) exit;
if (o_control.game_pause) exit;

// destroy violence
if (home.hammer && !home.hammer.secretDestroy) {
	outside = false;
	state = "fighting";
	exit;
}
//event_inherited


// go to work
if (o_timer.time % duration_hour == 0 && o_timer.hour == 9) {
		var xx = path_get_x(p_programmer_home_company, 0);
		var yy = path_get_y(p_programmer_home_company, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_programmer_move);
		inst.path = p_programmer_home_company;
}
// go back home
if (o_timer.time % duration_hour == 0 && o_timer.hour == 19) {
		var xx = path_get_x(p_programmer_company_home, 0);
		var yy = path_get_y(p_programmer_company_home, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_programmer_move);
		inst.path = p_programmer_company_home;
}

/*
if (!IsWeekend()) { // weekday
	SetStateAtTime(2, 8, "zzz", false);
	SetStateAtTime(8, 9, "driving", true);
	SetStateAtTime(9, 13, "programming", true);
	SetStateAtTime(13, 14, "rest", true);
	SetStateAtTime(14, 19, "programing", true);
	SetStateAtTime(19, 20, "driving", true);
	SetStateAtTime(20, 22, "watching Tv", false);
	SetStateAtTime(22, 24, "programming", false);
	SetStateAtTime(0, 2, "programming", false);
} else { // weekends
	SetStateAtTime(4, 11 ,"zzz", false);
	SetStateAtTime(11, 24, "playing Games", false);
	SetStateAtTime(0, 4, "programming", false);
}


