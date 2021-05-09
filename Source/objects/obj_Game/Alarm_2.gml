/// @desc Spawn Green enemies periodically.

instance_create_layer(irandom_range(30, room_width-30), 0, "Instances", obj_enemy_Green);

alarm[2] = irandom_range(5,8) * room_speed;	// spawn in every 5-6 seconds
