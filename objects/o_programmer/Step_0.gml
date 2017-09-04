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

if (!IsWeekend()) { // weekday
	SetStateAtTime(2, 8, "zzz", false);
	SetStateAtTime(8, 9, "driving", false);
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
