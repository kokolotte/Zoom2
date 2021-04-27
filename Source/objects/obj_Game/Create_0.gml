/// @desc Initialize game space.

// set some global variables

score = 0;
lives = 3;

// randomize seed

randomize();

// factions

enum factions {
	ally,
	enemy,
	neutral
}

// set font

draw_set_font(fnt_Text);