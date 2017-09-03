/// @description Draw
draw_self();
if (resident.leaved ) {
	//draw_sprite_ext(resident.sprite_index, 0, x+16, y+30, 1, 1, 0, c_gray, 1);
} else {
	if (!resident.outside) {
		draw_sprite_ext(resident.sprite_index, 0, x+18, y+28, .8, .8, 0, c_white, 1);
	} else {
		draw_sprite_ext(resident.sprite_index, 0, x+18, y+28, .8, .8, 0, c_gray, 1);
	}
}
if (selected) {
	// hightlight
	draw_set_color(c_white);
	draw_rectangle(x, y, x+sprite_width, y+sprite_height, true);
	draw_set_color(c_black);
	// operation button
}
