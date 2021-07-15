/// @desc Fade away.

speed -= 0.2;

image_alpha -= 0.04;	// gradually lower image opacity
if(image_alpha <= 0) {	// when completely invisible, destroy object
	instance_destroy();
}