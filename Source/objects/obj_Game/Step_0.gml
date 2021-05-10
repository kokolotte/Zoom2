/// @desc Room update.

if(room == rm_Start) {
	if(!audio_is_playing(msc_Title)) {
		audio_play_sound(msc_Title, 1, false);
	}
}

if(room != rm_Game) {
	if(keyboard_check_pressed(vk_up)) {
		cursor = 1;
		audio_play_sound(snd_cursormove, 1, false);
	}
	if(keyboard_check_pressed(vk_down)) {
		audio_play_sound(snd_cursormove, 1, false);
		cursor = 2;
	}
} else {
	if(score >= 1000) {
		score = 1000;
		if(!instance_exists(obj_Boss_Head)) {	// doesn't already exist
			clear_field();	// clears field of all enemies and enemy projectiles
			if(!instance_exists(obj_Boss_Head) && alarm[3] == -1) {
				// spawn boss
				audio_stop_all();
				if(!audio_is_playing(msc_Boss)) {
					audio_play_sound(msc_Boss, 2, true);
				}
				alarm[3] = 2*room_speed;
			}
		}
	}
}

if(keyboard_check_pressed(vk_enter)) {	// enter key pressed
	switch(room) {
		case rm_Start:
			audio_play_sound(snd_cursorselect, 1, false);
			if(cursor == 1) room_goto(rm_Game);	// start game
			if(cursor == 2) game_end();			// quit game
			break;
		case rm_Win:	// same as rm_Lose
		case rm_Lose:
			audio_play_sound(snd_cursorselect, 1, false);
			if(cursor == 1) {
				instance_destroy();
				room_goto(rm_Start);
			}
			if(cursor == 2) game_end();			// quit game
			break;
	}
}