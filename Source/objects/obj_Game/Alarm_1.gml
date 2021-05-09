/// @desc Spawn Blue enemies periodically.

instance_create_layer(irandom_range(40, room_width-40), 0, "Instances", obj_enemy_Blue);

alarm[1] = random_range(6,8) * room_speed;	// spawn in every 6-8 seconds
