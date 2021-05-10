/// @desc Write in text to screen.

switch(room) {	// text displayed depends on current room state
	case rm_Game:
		draw_text_transformed(40, 40, "SCORE: " + string(score),1.5,1.5,0);	// current score
		draw_text_transformed(40, 80, "LIVES: " + string(lives),1.5,1.5,0);	// current lives
		break;
	
	case rm_Start:
		draw_set_halign(fa_center);				// set text alignment
		var c = make_colour_rgb(220, 173, 231);	// lavender
		
		// title card
		draw_set_font(fnt_Title);
		draw_text_transformed_color(			// dilated and repositioned
			room_width/2, room_height/4, "ZOOM 2",
			4, 4, 0, c,c,c,c, 1
		);
		draw_set_font(fnt_Text);				// reset font style
		draw_set_halign(fa_left);				// reset text alignment
		
		// menu
		draw_text_transformed(room_width/2-204, room_height/4+240, "GAME START",2.3,2.3,0);
		draw_text_transformed(room_width/2-204, room_height/4+320, "QUIT",2.3,2.3,0);
		var cursor_height;
		if(cursor == 1) cursor_height = room_height/4+240;
		if(cursor == 2) cursor_height = room_height/4+320;
		draw_text_transformed(room_width/2-255, cursor_height, ">>",2.3,2.3,0);
		
		var offset = 190;
		draw_line_width_colour(offset,offset,room_width-offset,offset,5,c,c);							// top left to top right
		draw_line_width_colour(room_width-offset,offset,room_width-offset,room_height-offset,5,c,c);	// top right to bottom right
		draw_line_width_colour(room_width-offset,room_height-offset,offset,room_height-offset,5,c,c);	// bottom right to bottom left
		draw_line_width_colour(offset,room_height-offset,offset,offset,5,c,c);							// bottom left to top left
		break;
	
	case rm_Win:
		draw_set_halign(fa_center);				// set text alignment
		var c = make_colour_rgb(122, 231, 124);	// pastel green
		
		// title card
		draw_set_font(fnt_Title);
		draw_text_transformed_color(			// dilated and repositioned
			room_width/2, room_height/4, "VICTORY",
			3.5, 3.5, 0, c,c,c,c, 1
		);
		draw_set_font(fnt_Text);				// reset font style
		draw_set_halign(fa_left);				// reset text alignment
		
		// menu
		draw_text_transformed(room_width/2-204, room_height/4+240, "PLAY AGAIN",2.3,2.3,0);
		draw_text_transformed(room_width/2-204, room_height/4+320, "QUIT",2.3,2.3,0);
		var cursor_height;
		if(cursor == 1) cursor_height = room_height/4+240;
		if(cursor == 2) cursor_height = room_height/4+320;
		draw_text_transformed(room_width/2-255, cursor_height, ">>",2.3,2.3,0);
		
		var offset = 150;
		draw_line_width_colour(offset,offset,room_width-offset,offset,5,c,c);							// top left to top right
		draw_line_width_colour(room_width-offset,offset,room_width-offset,room_height-offset,5,c,c);	// top right to bottom right
		draw_line_width_colour(room_width-offset,room_height-offset,offset,room_height-offset,5,c,c);	// bottom right to bottom left
		draw_line_width_colour(offset,room_height-offset,offset,offset,5,c,c);							// bottom left to top left
		break;
	
	case rm_Lose:
		draw_set_halign(fa_center);				// set text alignment
		var c = make_colour_rgb(197, 41, 41);	// red
		
		// title card
		draw_set_font(fnt_Title);
		draw_text_transformed_color(			// dilated and repositioned
			room_width/2, room_height/4, "GAME OVER",
			2.9, 3, 0, c,c,c,c, 1
		);
		draw_set_font(fnt_Text);				// reset font style
		draw_set_halign(fa_left);				// reset text alignment
		
		// menu
		draw_text_transformed(room_width/2-204, room_height/4+240, "PLAY AGAIN",2.3,2.3,0);
		draw_text_transformed(room_width/2-204, room_height/4+320, "QUIT",2.3,2.3,0);
		var cursor_height;
		if(cursor == 1) cursor_height = room_height/4+240;
		if(cursor == 2) cursor_height = room_height/4+320;
		draw_text_transformed(room_width/2-255, cursor_height, ">>",2.3,2.3,0);
		
		var offset = 150;
		draw_line_width_colour(offset,offset,room_width-offset,offset,5,c,c);							// top left to top right
		draw_line_width_colour(room_width-offset,offset,room_width-offset,room_height-offset,5,c,c);	// top right to bottom right
		draw_line_width_colour(room_width-offset,room_height-offset,offset,room_height-offset,5,c,c);	// bottom right to bottom left
		draw_line_width_colour(offset,room_height-offset,offset,offset,5,c,c);							// bottom left to top left
		break;
}
