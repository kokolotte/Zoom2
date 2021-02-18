/// @desc

bulletCntr++;
if (bulletCntr >= bulletTimer) {
	bulletCntr = 0;
	bulletSemiC = 0;
	bulletSemiDelay = 10;
}
if (bulletSemiC < bulletSemi) {
	bulletSemiDelay++;
	if (bulletSemiDelay > 4) {
		if (instance_exists(obj_ship)) {
			var _x = obj_ship.x;
			var _y = obj_ship.y;
			var _dir = clamp(point_direction(x,y,_x,_y), 225, 315);
		} else {
			var _dir = random_range(225, 315);
		}
		createBullet(x, y, _dir, bulletSpeed, faction, 1, id, gunType);
		bulletSemiC++;
		bulletSemiDelay = 0;
	}
}
