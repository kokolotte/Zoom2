/// @desc Take damage
if (invincible || !active) {
	exit;
}
hp -= 1;
if (hp <= 0) {
	instance_destroy();
}
