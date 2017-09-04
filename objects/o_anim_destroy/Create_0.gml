/// @description Vars
remainingTime = 0;
remaingingHour = 0;
parent = noone; // parent building

if (TimePeriods(20, 24) or TimePeriods(0, 6)) {
	BoardMessage("夜间施工（8 pm - 6 am）更容易激起居民的愤怒情绪。");
	RiotIncrease(4);
}