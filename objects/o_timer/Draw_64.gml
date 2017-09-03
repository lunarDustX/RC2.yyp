if (hour <= 12) {
	draw_text(600, 50, weekday[wd]+", "+string(hour)+" am");
} else {
	draw_text(600, 50, weekday[wd]+", "+string(hour-12)+" pm");
}

draw_text(600,70,string(global.dayLeft)+" days left")