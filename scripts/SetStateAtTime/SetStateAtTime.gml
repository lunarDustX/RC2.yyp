/// @description SetStateAtTime(hour1, hour2, state, outside);
/// @arg hour1
/// @arg hour2
/// @arg state
/// @arg outside
if (o_timer.hour >= argument0 && o_timer.hour < argument1) {
	state = argument2;
	outside = argument3;
}
