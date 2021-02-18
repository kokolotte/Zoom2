/// @desc

bulletCntr++;
if (bulletCntr >= bulletTimer) {
	bulletCntr = 0;
	if (instance_exists(obj_ship)) {
		var _x = obj_ship.x;
		var _y = obj_ship.y;
		var _dir = clamp(point_direction(x, y, _x, _y), 225, 315);
	} else {
		var _dir = random_range(225, 315);
	}
	createBullet(x, y, _dir, bulletSpeed, faction, bulletSpread, id, gunType);
}
