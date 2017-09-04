/// @description Initialization
global.selecting = noone;
global.peopleLeft = 10;
global.dayLeft = 20;
global.env = 100;
global.reason = "未知";

draw_set_font(fnt_chinese);
SetConst();
money = 20;
riot = 5;
targetRiot = riot;


enum buildings {
	school = 0,
	hospital = 1,
	park = 2,
	shop = 3,
	company = 4,
}

enum building_type {
	public = 0,
	special = 1,
	house = 2,
}


game_pause = false;
game_over = false;



w_camera = camera_get_view_width(view_camera[0]);
h_camera = camera_get_view_height(view_camera[0]);
x_camera = 0;
y_camera = 0;
spd_camera = 4;

up_camera = 0;
down_camera = 0;
left_camera = 0;
right_camera = 0;

/*
enum week {
	Monday = "Monday",
	Tuesday = "Tuesday",
	Wednesday = "Wednesday",
	Thursday = "Thursday",
	Friday = "Friday",
	Saturday = "Saturday",
	Sunday = "Sunday",
}
*/