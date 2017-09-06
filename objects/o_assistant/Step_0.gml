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
		var xx = path_get_x(p_assistant_home_shop, 0);
		var yy = path_get_y(p_assistant_home_shop, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_assistant_move);
		inst.path = p_assistant_home_shop;
}
if (o_timer.time % duration_hour == 0 && o_timer.hour == 18) {
		var xx = path_get_x(p_assistant_shop_home, 0);
		var yy = path_get_y(p_assistant_shop_home, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_assistant_move);
		inst.path = p_assistant_shop_home;
}


/*
//event_inherited
if (!IsWeekend()) { // weekday
	SetStateAtTime(0 ,6, "zzz", false);
	SetStateAtTime(6, 18, "at shop", true);
	SetStateAtTime(18, 20, "cooking", false);
	SetStateAtTime(20, 23, "watching TV", false);
	SetStateAtTime(23 ,24, "zzz", false);
} else { // weekends
	SetStateAtTime(0 ,8, "zzz", false);
	SetStateAtTime(8, 12, "housework", false);
	SetStateAtTime(12, 14, "watching TV", false);
	SetStateAtTime(14, 18, "shopping", true);
	SetStateAtTime(18, 20, "cooking", false);
	SetStateAtTime(20, 24, "watching TV", false);
}
