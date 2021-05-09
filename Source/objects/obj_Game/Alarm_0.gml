/// @desc Spawn Red enemies periodically.

instance_create_layer(irandom_range(30, room_width-30), 0, "Instances", obj_enemy_Red);

alarm[0] = random_range(3,5) * room_speed;	// spawn in every 3-5 seconds
