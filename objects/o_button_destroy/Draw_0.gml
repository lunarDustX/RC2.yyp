/// @description 
draw_self();
if (position_meeting(mouse_x, mouse_y, self)) {
	draw_set_color(c_blue);
	if (parent) {
		if (parent.type == building_type.house && parent.resident.outside) {	
			draw_text(x-64, y-62, "趁居民回家之前偷偷拆掉他们的住宅。");
		} else {
			draw_text(x-64, y-62, "强拆通常不是一个明智的决定。");
		}
	}
	draw_set_color(c_black);
}