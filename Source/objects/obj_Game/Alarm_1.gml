/// @desc Spawn Blue enemies periodically.

instance_create_layer(irandom_range(60, room_width-60), 0, "Instances", obj_enemy_Blue);

alarm[1] = random_range(6,8) * room_speed;	// spawn in every 6-8 seconds
