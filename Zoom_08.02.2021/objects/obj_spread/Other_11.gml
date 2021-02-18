/// @desc
if (invincible) {
	exit;
}
hp -= 1;
if (hp <= 0) {
	instance_destroy();
}
