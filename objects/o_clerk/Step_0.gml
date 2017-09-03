/// @description Timetable
if (o_timer.wd > 0 && o_timer.wd <6) { // weekday
	if (TimePeriods(6,18)) {
		state = "at shop";
	} 
	if (TimePeriods(0,6)) {
		state = "zzz";
	}
	if (TimePeriods(18,19)) {
		state = "cooking";
	}
	if (TimePeriods(19,20)) {
		state = "cooking";
	}
	if (TimePeriods(20,23)) {
		state = "watching TV";
	}
	if (TimePeriods(23,24)) {
		state = "zzz";
	}
} else { // weekends
	if (TimePeriods(0,8)) {
		state = "zzz";
	} 
	if (TimePeriods(8,12)) {
		state = "housework";
	}
	if (TimePeriods(12,14)) {
		state = "rest";
	}
	if (TimePeriods(14,18)) {
		state = "shopping";
	}
	if (TimePeriods(18,20)) {
		state = "cooking";
	}
	if (TimePeriods(20,24)) {
		state = "watching TV";
	}
}
