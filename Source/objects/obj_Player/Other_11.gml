/// @desc Take damage.

if(invincible) exit;	// cannot take damage

lives -= 1;

if(lives <= 0) instance_destroy();

invincible = true;
alarm[0] = 120;			// lasts two seconds