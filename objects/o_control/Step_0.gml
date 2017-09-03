/// @description Get Input
if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (keyboard_check_pressed(ord("P"))) {
	game_pause = !game_pause;
}

if (riot >= 100) {
	GameOver();
}

// camera move
x_camera = camera_get_view_x(view_camera[0]);
y_camera = camera_get_view_y(view_camera[0]);

up_camera = keyboard_check(ord("W"));
down_camera = keyboard_check(ord("S"));
left_camera = keyboard_check(ord("A"));
right_camera = keyboard_check(ord("D"));

y_camera = clamp(y_camera + spd_camera*(down_camera - up_camera), 0, room_height - h_camera);
x_camera = clamp(x_camera + spd_camera*(right_camera - left_camera), 0, room_width - w_camera);
camera_set_view_pos(view_camera[0], x_camera, y_camera);

// camera scale
if (w_camera < 1280) {
	if (mouse_check_button(mouse_wheel_down())) {
		w_camera += 32;
		h_camera += 20;
		camera_set_view_size(view_camera[0], w_camera, h_camera);
	}
}

if (w_camera > 800) {
	if (mouse_check_button(mouse_wheel_up())) {
		w_camera -= 32;
		h_camera -= 20;
		camera_set_view_size(view_camera[0], w_camera, h_camera);
	}
}
