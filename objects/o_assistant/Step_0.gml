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
