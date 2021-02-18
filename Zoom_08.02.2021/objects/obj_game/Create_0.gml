/// @desc Initalize variables

score = 0;

gamePlaying = false;
steps = 1;
time = 0;

enum factions {
	neutral, ally, enemy
}

enum gunTypes {
	two_bullets, three_bullets, spread, laser
}

global.gameBorderLeft = 30;
global.gameBorderRight = 390;
global.gameBorderUpper = 30;
global.gameBorderLower = 690;
