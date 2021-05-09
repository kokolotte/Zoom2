/// @desc Room update.

if(room != rm_Game) {
	if(keyboard_check_pressed(vk_up)) cursor = 1;
	if(keyboard_check_pressed(vk_down)) cursor = 2;
} else {
	if(score >= 1000) {
		score = 1000;
		if(!instance_exists(obj_Boss_Head)) {	// doesn't already exist
			with(obj_par_Enemy) {
				instance_destroy();
			}
			with(obj_Bullet) {
				if(faction == factions.enemy) {
					instance_destroy();
				}
			}
			
			// disable minion spawn
			alarm[0] = -1;
			alarm[1] = -1;
			alarm[2] = -1;
			
			if(!instance_exists(obj_Boss_Head) && alarm[3] == -1) {
				// spawn boss
				alarm[3] = 2*room_speed;
			}
		}
	}
}

if(keyboard_check_pressed(vk_enter)) {	// enter key pressed
	switch(room) {
		case rm_Start:
			if(cursor == 1) room_goto(rm_Game);	// start game
			if(cursor == 2) game_end();			// quit game
			break;
		case rm_Win:	// same as rm_Lose
		case rm_Lose:
			if(cursor == 1) {
				instance_destroy();
				instance_create_layer(0,0,"Instances",obj_Game);
				room_goto(rm_Start);
			}
			if(cursor == 2) game_end();			// quit game
			break;
	}
}
