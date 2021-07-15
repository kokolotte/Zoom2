/// @desc Spawn Green enemies periodically.

instance_create_layer(irandom_range(30, room_width-30), 0, "Instances", obj_enemy_Green);

alarm[2] = random_range(6,7) * room_speed;	// spawn in every 4-7 seconds
