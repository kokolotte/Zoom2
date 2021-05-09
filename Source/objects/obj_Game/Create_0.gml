/// @desc Initialize game space.

// set some global variables

score = 0;
lives = 5;

// randomize seed

randomize();

// factions

enum factions {
	ally,
	enemy,
	neutral
}

enum bullet_types {
	neutral,
	sonic,
	splitter,
	bouncer
}

// default font

draw_set_font(fnt_Text);

// cursor

cursor = 1;