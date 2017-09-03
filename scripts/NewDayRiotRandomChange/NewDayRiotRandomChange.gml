var ra = irandom_range(-8,-1);
RiotIncrease(ra);
var board = instance_create_layer(0, 0, "Information", o_notice_borad);
if (ra > 0) {
	board.text = "崭新的一天。住户们愤怒升温。 ";
} else if (ra < 0) {
	board.text = "崭新的一天。住户们的情绪有所缓和。 ";
} else {
	ra = -1;
	board.text = "崭新的一天。住户们的情绪有所缓和。 ";
}

board.text += "社区愤怒值"+string(ra);