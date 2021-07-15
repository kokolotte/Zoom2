/// @desc Attack and movement patterns.

if(instance_exists(obj_Boss_Head)) {
	
	// movement
	
	var x_adjust = 0;

	if(orientation == -1) x_adjust = 160;
	if(orientation == 1) x_adjust = 280;

	if(side == "L") x_adjust *= -1;

	speed = obj_Boss_Head.speed;
	x = obj_Boss_Head.x + x_adjust;
	y = obj_Boss_Head.y + 100;
	
	// status
	
	active = speed == 0 && !obj_Boss_Head.invincible;
} else {
	instance_destroy();
	exit;
}

if(obj_Boss_Head.phase == 1 && active) {
	bullet_speed = 6;
	bullet_timer = 1;
	
	bullet_count++;
	if(bullet_count >= bullet_timer) {
		var bullet_angle;
		if(side = "L") { bullet_angle = direction-30 + 10*bullet_tick; }
		if(side = "R") { bullet_angle = direction+30 - 10*bullet_tick; }
		create_bullet(x,y,bullet_angle,bullet_speed,faction,bullet_types.neutral);
		
		bullet_count = 0;
		if(bullet_tick > 7 || bullet_tick < 0) bullet_direc *= -1;
		bullet_tick += bullet_direc;
	}
}

if(obj_Boss_Head.phase == 2 && active) {
	if(orientation == -1) {
		bullet_speed = 3;
		bullet_timer = 90;
	
		bullet_count++;	
		if(bullet_count >= bullet_timer) {
			var bullet_angle;
			var i = 0; repeat(3) {
				direction = 270-19 + i*16;
				var j = 0; repeat(6) {
					bullet_angle = direction + j;
					create_bullet(x, y, bullet_angle,
									bullet_speed, faction, bullet_types.neutral);
					j++;
				}
				i++;
			}
			bullet_count = 0;
		}
	}
	
	if(orientation == 1) {
		bullet_speed = 3;
		bullet_timer = irandom_range(1.5*room_speed, 3.5*room_speed);
		
		bullet_count2++;
		if(bullet_count2 >= bullet_timer) {
			create_bullet(x, y, 270, bullet_speed, faction, bullet_types.splitter);
			bullet_count2 = 0;
		}
	}
}

if(obj_Boss_Head.phase == 3 && active) {
	if(orientation == -1) {
		bullet_speed = 4;
		bullet_timer = irandom_range(2*room_speed, 5*room_speed);
		
		bullet_count++;
		if(bullet_count >= bullet_timer) {
			create_bullet(x, y, 270, bullet_speed, faction, bullet_types.sonic);
			bullet_count = 0;
		}
	}
	
	if(orientation == 1) {
		if(spritz < 10) {
			bullet_speed = 6;
			bullet_timer = 7;
		
			bullet_count++;
			if(bullet_count >= bullet_timer) {
				var new_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
				new_angle += irandom_range(-12,12);
				create_bullet(x, y, new_angle, bullet_speed, faction, bullet_types.bouncer);
				spritz++;
				bullet_count = 0;
			}
		} else if(alarm[0] == -1) {
			alarm[0] = 1.75 * room_speed;
		}
	}
}