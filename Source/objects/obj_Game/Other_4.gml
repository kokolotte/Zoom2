/// @desc Game state on room spawn.

if(room == rm_Game) {
	
	instance_create_layer(room_width/2, room_height-200, "Instances", obj_Player);	
	
	alarm[0] = 2*room_speed;		// time before Red enemy spawns	(2s)
	alarm[1] = 12*room_speed;		// time before Blue enemy spawns (12s)
	alarm[2] = 20*room_speed;		// time before Green enemy spawns (20s)
	
} else {
	cursor = 1;	// default cursor position
}