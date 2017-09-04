/// @description cost money to remove
if (!parent.removed) {
	with (parent) {
		o_control.money -= money_remove;
		removed = true;
		image_index = 1;
		DestroyTwoButtons();
		//selected = false;
		if (type = building_type.house) {
			PeopleLeave(resident);
			BoardMessage(resident.leavingMessage);
		} else {
			BoardMessage("没人知道"+name+"搬走是什么原因");
		}
	}
}
