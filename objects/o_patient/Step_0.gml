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
SetStateAtTime(0, 6, "zzz", false);
SetStateAtTime(6, 8 , "exercise", true);
SetStateAtTime(8, 15, "???", false);
SetStateAtTime(15,17, "exercise", true);
SetStateAtTime(17,22, "???", false);
SetStateAtTime(22,24, "zzz", false);

if (home.hammer) show_message(state);
