/// @desc Attack / movement.

// movement

if(x_velocity > 2.5) { direc = -1; }
if(x_velocity < -2.5) { direc = 1; }
x_velocity += 0.05 * direc;

x += x_velocity;
y += y_velocity;

// attack

bullet_count++;
if(bullet_count >= bullet_timer) {
	var _sep = 5;		// distance between weapons
	var bullet_angle;
			
	var i = 0; repeat(5) {
		bullet_angle = direction-20 + (i * 10);
		create_bullet(x+lengthdir_x(_sep, bullet_angle),
					  y+lengthdir_y(_sep, bullet_angle),
					  bullet_angle, bullet_speed, faction, bullet_types.neutral);
		i++;	// increment
	}
	bullet_count = 0;
}