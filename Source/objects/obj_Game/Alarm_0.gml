/// @desc Spawn Red enemies periodically.

instance_create_layer(irandom_range(0, room_width), 0, "Instances", obj_enemy_Red);

alarm[0] = irandom_range(4,6) * room_speed;	// spawn in every 2-3 seconds
