/// @desc Initialize variables

// Size
width = sprite_width;
height = sprite_height;

// Sprite vars
image_index = 0;
image_speed = 0;

// Button press variables
selected = false;		// if mouse is hovering over button
buttonPressed = false;	// if mouse left was pressed on button
buttonClicked = false;	// if mouse clicked on button

// Other vars
text = "";				// text to be shown on button
txtScale = 1;			// scale text by txtScale
txtAngle = 0;			// angle of text
font = undefined;		// button text font
scriptRef = -1;			// script that button uses
scriptArg = undefined;	// other argument to pass to script
