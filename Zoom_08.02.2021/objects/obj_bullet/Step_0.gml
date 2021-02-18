/// @desc Destroy when exit game area
if (!point_in_rectangle(x+lengthdir_x(speed, direction), y+lengthdir_y(speed, direction),
	global.gameBorderLeft, global.gameBorderUpper,
	global.gameBorderRight, global.gameBorderLower)
	) {
	instance_destroy();
}
