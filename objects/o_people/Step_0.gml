if (leaved) exit;
if (o_control.game_pause) exit;

// destroy violence
if (home.hammer) {
	outside = false;
	state = "fighting";
	exit;
}


