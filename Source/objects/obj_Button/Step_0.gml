/// @desc Core button logic

// Determine if button is selected
selected = point_in_rectangle(mouse_x, mouse_y, x-width/2, y-height/2, x+width/2, y+height/2);
/*
if (x < mouse_x < x+width && y < mouse_y < y+height) {
	selected = true;
} else {
	selected = false;
}
use mouse x and y positions relative to current view instead?
if so, use window_view_mouse_get_x(id of view to compare the position to)
or gui x
*/

// Checking if button is being pressed
if (selected && mouse_check_button_pressed(mb_left)) {
	buttonPressed = true;
}

if (buttonPressed && mouse_check_button_released(mb_left)) {
	if (selected) {
		buttonClicked = true;
	}
	buttonPressed = false;	// reset buttonPressed to false
}

// Task to execute when button is clicked
if (buttonClicked) {
	buttonAction(scriptRef, scriptArg);
	buttonClicked = false;	// reset buttonClicked to false
}

// setting image sprite
if (buttonPressed) {
	image_index = 2;
} else {
	if (selected) {
		image_index = 1;
	} else {
		image_index = 0;
	}
}
