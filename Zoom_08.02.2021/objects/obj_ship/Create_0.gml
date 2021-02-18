/// @desc Initalize variables
event_inherited();

spd = 5;
xVel = 0;
yVel = 0;

invincible = false;

gunType = -1;
bulletTimer = room_speed/6;
bulletCntr = 0;
bulletSpeed = 6;
bulletSize = 2;
/* semiauto
bulletSemi = 6;
bulletSemiC = bulletSemi + 1;
bulletSemiDelay = 4;
*/
//spreadshot
bulletSpread = 5;


faction = factions.ally;
