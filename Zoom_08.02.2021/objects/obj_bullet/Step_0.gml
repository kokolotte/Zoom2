/// @desc Destroy when exit game area
<<<<<<< HEAD
if (!point_in_rectangle(x+lengthdir_x(speed, direction), y+lengthdir_y(speed, direction),
	global.gameBorderLeft, global.gameBorderUpper,
	global.gameBorderRight, global.gameBorderLower)
	) {
	instance_destroy();
}
=======

if(!point_in_rectangle(x, y,
						global.gameBorderLeft, global.gameBorderRight,
						global.gameBorderUpper+7.5, global.gameBorderLower))
{
	// instance_destroy();
}
>>>>>>> 636bd7d24425f07103abd4c349d38a7cb4de2bf3
