/// @desc Core player logic

keyCheckLeft = (keyboard_check(vk_left) || keyboard_check(ord("A")));
keyCheckRight = (keyboard_check(vk_right) || keyboard_check(ord("D")));
keyCheckUp = (keyboard_check(vk_up) || keyboard_check(ord("W")));
keyCheckDown = (keyboard_check(vk_down) || keyboard_check(ord("S")));

var _hmove = keyCheckRight - keyCheckLeft;
var _vmove = keyCheckDown - keyCheckUp;

xVel = _hmove * spd;
yVel = _vmove * spd;

if (x + xVel < global.gameBorderLeft + sprite_width/2) {
	x = global.gameBorderLeft + sprite_width/2;
	xVel = 0;
}
if (x + xVel > global.gameBorderRight - sprite_width/2) {
	x = global.gameBorderRight - sprite_width/2;
	xVel = 0;
}
if (y + yVel < global.gameBorderUpper + sprite_height/2) {
	y = global.gameBorderUpper + sprite_height/2;
	yVel = 0;
}
if (y + yVel > global.gameBorderLower - sprite_height/2) {
	y = global.gameBorderLower - sprite_height/2;
	yVel = 0;
}

x += xVel;
y += yVel;

bulletCntr++;
if (bulletCntr >= bulletTimer) { //bulletSize
	createBullet(x, y, 90, bulletSpeed, faction, bulletSpread, id, gunType);
	bulletCntr = 0;
}

/* semiauto
bulletCntr++;
if (bulletCntr >= bulletTimer) {
	bulletCntr = 0;
	bulletSemiC = 0;
	bulletSemiDelay = 10;
}
if (bulletSemiC < bulletSemi) {
	bulletSemiDelay++;
	if (bulletSemiDelay > 4) {
		createBullet(90, bulletSpeed, faction, bulletSpread, id, gunType);
		bulletSemiC++;
		bulletSemiDelay = 0;
	}
}
*/
