// event_inherited
if (leaved) exit;
if (o_control.game_pause) exit;

// destroy violence
if (home.hammer && !home.hammer.secretDestroy) {
	outside = false;
	state = "fighting";
	exit;
}

/*
//event_inherited
SetStateAtTime(0, 7, "zzz", false);
SetStateAtTime(7, 8, "morning exercise", true);
SetStateAtTime(8, 12, "teaching", true);
SetStateAtTime(12, 13, "drinking", true);
SetStateAtTime(13, 14, "drunk", true);
SetStateAtTime(14, 17, "at park", true);
SetStateAtTime(17, 20, "watching TV", false);
SetStateAtTime(20, 21, "drinking", false);
SetStateAtTime(21, 24, "drunk", false);