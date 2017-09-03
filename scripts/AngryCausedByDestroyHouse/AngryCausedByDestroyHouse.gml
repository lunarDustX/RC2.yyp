/// @description AngryCausedByDestroyHouse(victim)
/// @arg victim
var victim = argument0;
var totalAngry = 0;
for (var i = 0; i < instance_number(o_people); i++) {
	var otherPeople = instance_find(o_people, i); 
	if (victim != otherPeople && !otherPeople.leaved) {
		totalAngry += round(otherPeople.angry * victim.popularity *0.5);  
	}			
}
totalAngry += victim.popularity * victim.angry;
return totalAngry;