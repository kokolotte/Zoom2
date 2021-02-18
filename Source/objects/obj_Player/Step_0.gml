/// @desc Update player position.

// key input

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

// determine direction

var horizontal_mv = key_right - key_left;
var vertical_mv = key_down - key_up;

// determine velocities

x_velocity = horizontal_mv * player_speed;
y_velocity = vertical_mv * player_speed;

// update position

x += x_velocity;
y += y_velocity;

// shooting

bullet_count++;
if(bullet_count >= bullet_timer) {
	create_bullet(x, y, 90, id, obj_PlayerBullet);
	bullet_count = 0;
}