/// @desc Draw GUI

switch (room) {
	case rm_start:
		var _c = c_blue;
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2, 240, "ZOOM!", 4, 4, 0, _c, _c, _c, _c, 1);
		draw_set_halign(fa_left);
		break;
	case rm_game:
		var _c = c_teal;
		draw_set_color(_c);
		draw_rectangle(global.gameBorderLeft, global.gameBorderUpper,
						global.gameBorderRight, global.gameBorderLower, true);
		draw_rectangle(405, 30, 570, 150, true);
		draw_rectangle(405, 165, 570, 690, true);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text_transformed(420, 45, "Score:", 1, 1, 0);
		draw_text(430, 65, score);
		draw_text_transformed(420, 90, "Time:", 1, 1, 0);
		draw_text(430, 110, timeStr);
		draw_text_transformed(420, 180, "Lives:", 1, 1, 0);
		break;
}
