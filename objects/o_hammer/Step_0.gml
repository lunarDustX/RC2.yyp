/// @description come back home
if (parent.type == building_type.house) {
	if (!parent.resident.outside && secretDestroy) {
		show_message("failed.compensate...");
		instance_destroy();
	}
}
