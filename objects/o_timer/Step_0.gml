/// @description Time goes
if (o_control.game_pause) exit;
time ++;
hour = (time div duration_hour)%24;
minute = time % duration_hour;
if (time % duration_day == 0) { // new day begins
	wd = (wd+1)%7;
	global.dayLeft--;
	NewDayRiotRandomChange();
}

