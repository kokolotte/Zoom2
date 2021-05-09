/// @desc write in text to screen

switch(room) {	// text displayed depends on current room state
	case rm_Game:
		draw_text(40, 40, "SCORE: " + string(score));	// current score
		draw_text(40, 65, "LIVES: " + string(lives));	// current lives
		break;
	
	case rm_Start:
		draw_set_halign(fa_center);				// set text alignment
		var c = make_colour_rgb(220, 173, 231);	// lavender
		
		// title card
		draw_set_font(fnt_Title);
		draw_text_transformed_color(			// dilated and repositioned
			room_width/2, room_height/4, "ZOOM",
			4, 4, 0, c,c,c,c, 1
		);
		draw_set_font(fnt_Text);				// reset font style
		/*
		// game instructions
		draw_text(
			room_width/2, 200,
			"Score 1,000 points to win!\n\n"
			+ "UP: move\n"
			+ "LEFT/RIGHT: change direction\n"
			+ "SPACE: shoot\n\n"
			+ ">> PRESS ENTER TO START <<"
		);
		*/
		
		draw_set_halign(fa_left);		// reset text alignment
		break;
	
	case rm_Win:
		draw_set_halign(fa_center);
		var c = c_lime;					// set font color to lime
		
		// title card
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!",
			3, 3, 0, c,c,c,c, 1
		);
		
		// game instructions
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		);
		
		draw_set_halign(fa_left);
		break;
	
	case rm_Lose:
		draw_set_halign(fa_center);
		var c = c_red;					// set font color to red
		
		// title card
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c,c,c,c, 1
		);
		
		// game instructions
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score)
			+ "\n\nPRESS ENTER TO RESTART"
		);
		
		draw_set_halign(fa_left);
		break;
}
