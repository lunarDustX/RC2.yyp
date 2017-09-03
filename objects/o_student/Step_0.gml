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
