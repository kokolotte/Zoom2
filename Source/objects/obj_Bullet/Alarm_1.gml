/// @desc Sonic.

if(image_blend != c_red) {
	image_blend = c_red;
	alarm[1] = .75*room_speed;
} else {
	instance_destroy();
	var i = 0; repeat(30) {
		create_bullet(x, y, 0, 10 - i*.25, faction, bullet_types.neutral);
		create_bullet(x, y, 180, 10 - i*.25, faction, bullet_types.neutral);
		i++;
	}
}