/// @desc Destroy when exit game area
if (!point_in_rectangle(x, y, global.gameBorderLeft, global.gameBorderUpper,
	global.gameBorderRight, global.gameBorderLower)
	) {
	instance_destroy();
}
