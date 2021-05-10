/// @desc Update current phase and dependent actions.

// update phase

// PHASE 1 : 100 HP
// PHASE 2 : 100 HP
// PHASE 3 : 100 HP

if(phase == 2 && hitpoints == 80) {
	phase = 3;
	invincible = true;
	alarm[0] = 4*room_speed;
} else if(phase == 1 && hitpoints == 180) {
	phase = 2;
	invincible = true;
	alarm[0] = 4*room_speed;
}

if(phase == 1 && distance_to_point(room_width/2,300) < 2) {
	speed = 0;
	invincible = false;
}

if(speed == 0) {
	if(x > spawn_x+100 || x < spawn_x-100) direc *= -1;
	x += 1 * direc;
}