/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
if (alpha > 0 && TimePeriods(6, 18)) {
	alpha -= 0.005;
}

if (alpha < 0.5 && TimePeriods(18, 24)) {
	alpha +=0.005;
}
draw_set_alpha(alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);