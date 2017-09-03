/// @description Draw
draw_self();
//draw_text(x+10, y+10, name);
if (selected) {
	// hightlight
	draw_set_color(c_white);
	draw_rectangle(x, y, x+sprite_width, y+sprite_height, true);
	draw_set_color(c_black);
	// operation button
}
