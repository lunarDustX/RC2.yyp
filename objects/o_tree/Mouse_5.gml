/// @description cut down
var anim_destroy = instance_create_layer(x, y, "Information", o_anim_destroy);
anim_destroy.remainingTime = destroyTime;
anim_destroy.alarm[0] = destroyTime;
anim_destroy.parent = self;
alarm[0] = destroyTime;

if (something) {
	show_message("找到了丢失的玩具。");
	RiotIncrease(-6);
}
