/// @description select or not
selected = !selected;
if (selected) {
	with (global.selecting) {
		selected = false;
		DestroyTwoButtons();
	}
	global.selecting = self;
} else {
	global.selecting = noone;
}
if (selected && !removed) {
	if (button_remove == noone) {
		button_remove = instance_create_depth(x+sprite_width, y, depth, o_button_remove);
		button_remove.parent = self;
	}
	if (button_destroy == noone) {
		button_destroy = instance_create_depth(x+sprite_width, y+32, depth, o_button_destroy);
		button_destroy.parent = self;
	}
} else {
	DestroyTwoButtons();
}

