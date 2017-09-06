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

if (o_timer.time % duration_hour == 0 && o_timer.hour == 12) {
		var xx = path_get_x(p_artist_home_park, 0);
		var yy = path_get_y(p_artist_home_park, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_artist_move);
		inst.path = p_artist_home_park;
}

if (o_timer.time % duration_hour == 0 && o_timer.hour == 18) {
		var xx = path_get_x(p_artist_park_home, 0);
		var yy = path_get_y(p_artist_park_home, 0);
		var inst = instance_create_layer(xx, yy, "Instances", o_artist_move);
		inst.path = p_artist_home_park;
}

/*
//event_inherited
SetStateAtTime(0, 8, "zzz", false);
SetStateAtTime(8, 24, "park", true);