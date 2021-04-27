/// @desc Attack / movement.

// attack

// shooting

bullet_count++;
if(bullet_count >= bullet_timer) {
	var direc = point_direction(x, y, obj_Player.x, obj_Player.y);
	
	create_bullet(x, y, direc, bullet_speed, faction);
	bullet_count = 0;
}