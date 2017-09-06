/// @description Draw removing money
draw_self();
if (position_meeting(mouse_x, mouse_y, self)) {
	draw_set_color(c_white);
	if (parent) {
		draw_text(x-64, y-30, "慷慨的补偿。支付费用: "+string(parent.money_remove)+"k");
	}
	draw_set_color(c_black);
}
