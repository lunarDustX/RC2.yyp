/// @description 
image_index = o_control.game_pause;

if (mouse_check_button_released(mb_left)) {
	if (instance_position(mouse_x, mouse_y, o_pause)) {
		o_control.game_pause = !o_control.game_pause;
	}
}
