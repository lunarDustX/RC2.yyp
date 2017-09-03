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
//event_inherited
if (o_timer.time % duration_day == 0 && !checkFlight) {
	checkFlight = true;
	var flight = choose(0, 1);
	if (flight) {
		outside = true;
		state = "flight";
	} else {
		outside = false;
		state = "at home";
	}
}

if (o_timer.hour == 24) {
	checkFlight = false;
}