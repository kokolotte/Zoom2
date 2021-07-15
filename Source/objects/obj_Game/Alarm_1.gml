/// @desc Spawn Blue enemies periodically.

instance_create_layer(irandom_range(60, room_width-60), 0, "Instances", obj_enemy_Blue);

alarm[1] = random_range(4.5,6.5) * room_speed;	// spawn in every 4-6 seconds
