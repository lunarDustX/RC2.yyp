/// @description Insert description here
// emergency 
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
SetStateAtTime(0, 7, "zzz", false);
SetStateAtTime(7, 8, "breakfast", false);
SetStateAtTime(8, 16, "hospital", true);
SetStateAtTime(16, 24, "at home", false);