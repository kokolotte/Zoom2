/// @desc Take damage.

if(invincible) exit;	// cannot take damage

lives -= 1;
audio_play_sound(snd_hurt, 1, false);	// life lost sfx

if(lives <= 0) instance_destroy();

invincible = true;
alarm[0] = 2.5*room_speed;	// 2.5s of iframes