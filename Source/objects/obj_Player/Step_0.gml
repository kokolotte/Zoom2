/// @desc Update player position.

// key input

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

// determine direction

var horizontal_mv = key_right - key_left;
var vertical_mv = key_down - key_up;

// determine velocities

x_velocity = horizontal_mv * player_speed;
y_velocity = vertical_mv * player_speed;

// update position

x += x_velocity;
y += y_velocity;

x = clamp(x, 18, room_width-18);
y = clamp(y, 425, room_height-18);

// shooting

bullet_count++;
if(bullet_count >= bullet_timer) {
	create_bullet(x, y, 90, bullet_speed, faction, bullet_types.neutral);
	bullet_count = 0;
}

// invincibility

if(invincible) {
	if(alarm[0] % interval <= interval/2) {
		image_alpha = 0.2;
	} else {
		image_alpha = 1;
	}
} else {
	image_alpha = 1;
}