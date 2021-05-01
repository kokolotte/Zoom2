/// @desc Spawn Blue enemies periodically.

instance_create_layer(irandom_range(26, room_width-26), 0, "Instances", obj_enemy_Blue);

alarm[1] = irandom_range(5,6) * room_speed;	// spawn in every 4-5 seconds
