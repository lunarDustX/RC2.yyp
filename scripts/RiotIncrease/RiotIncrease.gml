/// @description RiotIncrease(delta)
/// @arg delta
var delta = argument0;
o_control.targetRiot = clamp(o_control.riot + delta, 0, 100);