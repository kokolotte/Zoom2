/// @desc Take damage.

if(invincible) exit;	// cannot take damage

lives -= 1;

invincible = true;
alarm[0] = 120;			// lasts two seconds