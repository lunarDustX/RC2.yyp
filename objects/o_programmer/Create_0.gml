/// @description Vars
event_inherited();
home = o_house_programmer;

popularity = 5;
//mood = 10;
mood_target = mood;

name = "程序员";
age = 30;
occupation = 0;

// fighting
strength = 6;

// building_influence
building_influnce[buildings.school] = 0;
building_influnce[buildings.hospital] = 0;
building_influnce[buildings.park] = 0;
building_influnce[buildings.shop] = -1;
building_influnce[buildings.company] = 2;


// building respond
building_respond[buildings.school] = "啊哦！";