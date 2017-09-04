/// @description draw countdown
draw_self();
if (!o_control.game_pause) {
	remainingTime--;
}
remaingingHour = remainingTime/duration_hour;
draw_set_color(c_blue);
draw_text(x, y-30, "倒计时：" + string(remaingingHour));
draw_set_color(c_black);
