/// @desc Initialize player object.

faction = factions.ally;

// movement

x_velocity = 0;
y_velocity = 0;

player_speed = 6;

// shooting

bullet_speed = 10;
bullet_timer = room_speed / 8;	// static; frames between shots
bullet_count = 0;				// current frame, see bullet_count

// other

invincible = false;
interval = 15;