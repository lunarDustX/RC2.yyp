/// @description 

if (!electric && (o_timer.hour >= 18 or o_timer.hour <6)) {
	with (o_people) {
		if (!leaved && !outside && state != "zzz" && !angry_elec) {
			angry_elec = true;
			mood_target -= 1;
			RiotIncrease(10);
			// say something
			if (textbox == noone) {
				textbox = instance_create_depth(x+140, y+10, depth, o_speaker);
			}	
			textbox.text = "power!";
		}
	}
}
