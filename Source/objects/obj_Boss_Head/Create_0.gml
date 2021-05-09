/// @desc Add to parent values.

// Inherit the parent event.

event_inherited();

// added values

invincible = true;

spawn_x = x;

direction = 270;
speed = 1;
direc = 1;

hitpoints = 1;
phase = 1;


// spawn weapons

// L2 L1 R1 R2

var L1 = instance_create_layer(x, y, "Instances", obj_Boss_Weapon);
var R1 = instance_create_layer(x, y, "Instances", obj_Boss_Weapon);

with(L1) {
	orientation = -1;
	side = "L";
}

with(R1) {
	orientation = -1;
	side = "R";
}