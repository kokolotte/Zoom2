/// @desc Draw to screen

draw_self();

// draw text on button
//draw_set_font();			// set text font
draw_set_halign(fa_center);	// set horizontal alignment
draw_set_valign(fa_center);	// set vertical alignment
draw_text(x, y, text);		// draw text using button x and y coords
