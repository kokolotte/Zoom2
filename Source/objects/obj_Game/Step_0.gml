/// @desc Room update.

if(keyboard_check_pressed(vk_enter)) {	// enter key pressed
	switch(room) {
		case rm_Start:
			room_goto(rm_Game);	// change room
			break;
		
		case rm_Win:
		case rm_Lose:
			game_restart();		// reset game state
			break;
	}
}
