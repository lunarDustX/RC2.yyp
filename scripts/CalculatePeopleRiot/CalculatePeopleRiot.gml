/// @description CalculatePeopleRiot(influence_number)
/// @arg influence_number
var sum = 0;
var influence_number = argument0;
with (o_people) {
	if (!leaved) {
		sum += influence_number * angry;
	}
}
return sum;