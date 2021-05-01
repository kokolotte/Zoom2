/// @desc Set universal enemy variables.

// Inherit the parent event.

event_inherited();

faction = factions.enemy;	// set alignment

// add onto properties

direction = 270;			// default direction

init_speed = speed;			// for reset
bullet_counter = 0;
