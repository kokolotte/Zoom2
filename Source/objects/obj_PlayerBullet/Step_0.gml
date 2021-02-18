/// @desc Destroy object.

// destroy object when bullet leaves room bounds

if(!point_in_rectangle(x, y, 0, 0, room_width, room_height)) {
	instance_destroy();
}
