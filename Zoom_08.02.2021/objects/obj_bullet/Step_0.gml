/// @desc Destroy when exit game area

if(!point_in_rectangle(x, y,
						global.gameBorderLeft, global.gameBorderRight,
						global.gameBorderUpper+7.5, global.gameBorderLower))
{
	// instance_destroy();
}