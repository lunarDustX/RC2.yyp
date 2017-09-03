/// @description Directly destroy
with (o_people) {
	mood_target = clamp(mood + building_influnce[other.building_index], mood_min, mood_max); 
	if (textbox == noone) {
		textbox = instance_create_depth(x+140, y+10, depth, o_speaker);
	}
	textbox.text = building_respond[other.building_index];
	//speaker.alarm[0] = room_speed * 5;
}
