/// @description TimePeriods(hour1, hour2)
/// @arg hour1
/// @arg hour2
var hour1 = argument0;
var hour2 = argument1;
if (o_timer.hour >= hour1 && o_timer.hour < hour2) return true;
return false;
