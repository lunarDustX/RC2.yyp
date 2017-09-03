/// @description display remaining time
draw_self();
remainingTime--;
remaingingHour = remainingTime/duration_hour;
draw_set_color(c_blue);
draw_text(x, y-30, "倒计时：" + string(remaingingHour));
draw_set_color(c_black);
