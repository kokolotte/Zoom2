/// @desc Take damage.

if(invincible) exit;	// cannot take damage

hitpoints -= 1;			// subtract health

if(hitpoints <= 0) {	// no health, destroy instance
	if(object_index != obj_Boss_Head) {
		audio_play_sound(snd_kill, 1, false);
	}
	switch(object_index) {	// score depending on enemy type
		case obj_enemy_Red:
			score += 15;
			implode(x,y,c_red);
			break;
		case obj_enemy_Blue:
			score += 40;
			implode(x,y,c_aqua);
			break;
		case obj_enemy_Green:
			score += 30;
			implode(x,y,c_lime);
			break;
	}
	instance_destroy();
}