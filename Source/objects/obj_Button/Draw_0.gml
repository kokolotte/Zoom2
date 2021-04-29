/// @desc Draw to screen

draw_self();

// draw text on button
if (font != undefined) {
	draw_set_font(font);	// set text font
}
draw_set_halign(fa_center);	// set horizontal alignment
draw_set_valign(fa_center);	// set vertical alignment
draw_text_transformed(x, y, text, txtScale, txtScale, txtAngle);	// draw text using button x and y coords
