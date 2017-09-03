/// @description building destroy finished
if (parent.type == building_type.public) {
	if (!parent.removed) {
		var sum = 0;
		with (o_people) {
			if (!leaved) {
				// 1. mood 
				mood_target = clamp(mood + building_influnce[other.parent.building_index], mood_min, mood_max); 
				// 2. say some words
				if (textbox == noone) {
					textbox = instance_create_depth(x+110, y+10, depth, o_speaker);
				}
				textbox.text = building_respond[other.parent.building_index];
				// 3. riot calculate
				sum += angry *building_influnce[other.parent.building_index];
			}
		}
		RiotIncrease(-sum);
	
		with (parent) {
			removed = true;
			image_index = 1;
			DestroyTwoButtons();
		}
	}
} else if (parent.type == building_type.house) {
	if (!parent.resident.outside) { // at home
		if (!WinFight(parent.resident.strength)) {
			GuardLevelUp();
			BoardMessage("遭遇住户强烈反抗，拆除失败。引起了其他住户的警觉。");
			RiotIncrease(10);
		} else {
			BoardMessage("强拆成功!此举引起居民们的强烈情绪。");
			with (parent.resident) {
				var totalAngry = AngryCausedByDestroyHouse(self);
				RiotIncrease(totalAngry);
				GuardLevelUp();
				PeopleLeave(self);
			}
			with (parent) {
				removed = true;
				image_index = 1;
				DestroyTwoButtons();
			}	
		}
	} else { // secretly destroy
		BoardMessage("你趁房主不在家，偷偷拆掉了他的房子！\n\n" + parent.resident.name + "成为了又一个流浪汉。\n\n" + "居民们感到愤怒和慌张。纷纷缩短外出时间。");
		with (parent.resident) {
			var totalAngry = AngryCausedByDestroyHouse(self);
			RiotIncrease(totalAngry);
			GuardLevelUp();
			PeopleLeave(self);
		}
		with (parent) {
			removed = true;
			image_index = 1;
			DestroyTwoButtons();
		}
	}
}

instance_destroy();