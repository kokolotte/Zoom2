/// @desc Initialize player object.

// movement

x_velocity = 0;
y_velocity = 0;

player_speed = 5;

// shooting

bullet_timer = room_speed / 6;	// static; frames between shots
bullet_count = 0;				// current frame, see bullet_count