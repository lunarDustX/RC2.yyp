/// @description Draw moodBar 
// 0. picture
if (!leaved) {
	draw_self();
} else {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_gray, 1);
}
// 1. name
draw_set_color(c_black);
draw_text(x+40, y+6 , name);
draw_set_halign(fa_left);

// 2. mood
if (mood > mood_target) {
	mood -= 0.1;
} else if (mood < mood_target) {
	mood += 0.1;
}
if (!leaved) {
	draw_healthbar(x+40, y+26, x+26+mood_length, y+30, 10*mood, c_black, c_red, c_green, 0, true, false);
} else {
	draw_text(x+40, y+26, "LEAVED");
}
// 3. detail info
if (position_meeting(mouse_x, mouse_y, self)) {
	draw_set_color(c_blue);
	draw_text(x-60, y+2, "年龄: " + string(age));
	draw_text(x-60, y+20, "声望: " + string(popularity));
	draw_text(x-60, y+38, "武力: " + string(strength));
	draw_set_color(c_black);
}
/*
// 4. state
if (!leaved) {
	draw_set_color(c_blue);
	draw_text(x, y+sprite_height + 2, state);
	draw_set_color(c_black);
}