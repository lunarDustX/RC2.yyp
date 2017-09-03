/// @description HINTS FOR TEST
/*
// building operation
if (position_meeting(mouse_x, mouse_y, o_building)) {
	DrawHintRectange();
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	hintText = "点击左键搬迁，点击右键强行拆除。";
	draw_text(room_width/2, room_height-32, hintText);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
}
*/
DrawHintRectange();
hintText = "";
with (o_building) {
	if (selected) {
		other.hintText = description;
	}
}

with (o_house) {
	if (!removed && selected) {
		if (resident.outside) {
			other.hintText = "不在家"; 
		} else {
			other.hintText = "在家";
		}
	}
}

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height-50, hintText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);