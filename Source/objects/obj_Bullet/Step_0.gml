/// @desc Bullet off-screen.

if(bullet_type == bullet_types.splitter) {
	image_xscale = 5;
	image_yscale = 5;
	if(alarm[0] == -1) {
		alarm[0] = irandom_range(20, 3.25*room_speed);
	}
}

if(bullet_type == bullet_types.sonic) {
	image_xscale = 3;
	image_yscale = 3;
	if(alarm[1] == -1) {
		alarm[1] = irandom(3.5*room_speed);
	}
}

if(bullet_type == bullet_types.bouncer) {
	if(!bounced) {
		if(x <= 0 || x >= room_width) {
			direction = -direction + 180;
			bounced = true;
		}
		if(y <= 0 || y >= room_height) {
			direction = -direction;
			bounced = true;
		}
	}
}