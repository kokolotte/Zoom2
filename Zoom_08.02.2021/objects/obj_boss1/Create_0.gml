/// @desc
event_inherited();

speed = 0;
direction = 270;
image_angle = 270;

faction = factions.enemy;

active = true;

invincible = false;
hp = 150;

bulletSpeed = 6;
bulletSize = 1;

gunType[3] = -1;
gunType[2] = gunTypes.spread;
gunType[1] = gunTypes.spread;
gunType[0] = -1;

bulletSpread = 5;

bulletSemiDelay = 4;

for (i = 3; i >= 0; i--) {
	if (gunType[i] = -1) {
		bulletTimer[i] = room_speed/2;
		bulletSemi[i] = 6;
		bulletSemiC[i] = bulletSemi[i] + 1;
		bulletSemiDelayC[i] = bulletSemiDelay;
	} else {
		bulletTimer[i] = room_speed*1.25;
		bulletSemi[i] = -1;
		bulletSemiC[i] = -1;
		bulletSemiDelayC[i] = -1;
	}
	bulletCntr[i] = bulletTimer[i];
}
