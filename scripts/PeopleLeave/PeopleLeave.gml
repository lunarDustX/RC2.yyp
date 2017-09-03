/// @description PeopleLeave(resident)
/// @arg resident
with (argument0) {
	leaved = true;
	state = "leaved";
	global.peopleLeft --;
	if (global.peopleLeft == 0) {
		WinGame();
	}
}