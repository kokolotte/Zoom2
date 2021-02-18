/// @desc

for (i = 0; i <= 3; i+=1) {
	bulletCntr[i]++;
	if (bulletCntr[i] >= bulletTimer[i]) {
		bulletCntr[i] = 0;
		
		var _x = x + ((i - 1.5) * 90);
		if (instance_exists(obj_ship)) {
			var _xx = obj_ship.x;
			var _yy = obj_ship.y;
			var _dir = clamp(point_direction(_x,y,_xx,_yy), 225, 315);
		} else {
			var _dir = random_range(225, 315);
		}
			
		if (gunType[i] == -1) {	// semi
			bulletSemiC[i] = 0;
			bulletSemiDelayC[i] = bulletSemiDelay;
		} else if (gunType[i] = gunTypes.spread) {	// spreadshot
			} else {
				var _dir = random_range(225, 315);
			}
			createBullet(_x, y, _dir, bulletSpeed, faction, bulletSpread, id, gunType[i]);
	}
	if (gunType[i] = -1) {
		if (bulletSemiC[i] < bulletSemi[i]) {
			bulletSemiDelayC[i]++;
			if (bulletSemiDelayC[i] > bulletSemiDelay) {
				createBullet(_x, y, _dir, bulletSpeed, faction, 1, id, gunType[i]);
				bulletSemiC[i]++;
				bulletSemiDelayC[i] = 0;
			}
		}
	}
}
