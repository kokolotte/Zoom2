/// @desc Attack / movement.

if(instance_exists(obj_Player)) {
	bullet_count++;
	if(bullet_count >= bullet_timer && y < obj_Player.y) {
		var direc = point_direction(x, y, obj_Player.x, obj_Player.y);
	
		create_bullet(x, y, direc, bullet_speed, faction, bullet_types.neutral);
		bullet_count = 0;
	}
}