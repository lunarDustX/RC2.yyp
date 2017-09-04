/// @description draw global GUI
if (riot < targetRiot) {
	riot += 1;
} else if (riot > targetRiot) {
	riot -= 1;
}

draw_text(580, 115, "社区愤怒值 : " + string(riot));
draw_text(420, 80, "0");
draw_text(860, 80, "100");
draw_healthbar(420, 100, 860, 106, riot, c_gray, c_orange, c_red, 0 , true, false);

draw_text(1000, 50, "资金: "+string(money)+"k");
draw_text(300, 40, "environment: " + string(global.env));
