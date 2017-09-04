/// @description power control
electric = !electric;
image_index = !electric;

if (electric) {
	with (o_people) {
		if (!leaved) {
			angry_elec = false;
		}
	}
}

