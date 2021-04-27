/// @desc Bullet off-screen.

if(!point_in_rectangle(x, y, 0, 0, room_width, room_height)) {	// screen bounds
	instance_destroy();
}
