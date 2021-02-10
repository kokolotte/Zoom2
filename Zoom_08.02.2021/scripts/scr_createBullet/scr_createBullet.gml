/// @function createBullet(x, y, dir, scale, size)
/// @param {int} dir The direction the bullet will travel
/// @param {int} spd The speed the bullet moves at
/// @param {int} scale The radius of the bullet
/// @param fac The faction the bullet belongs to
/// @desc Create an instance of obj_bullet and set the direction, speed, and size.

function createBullet(_dir, _spd, _scale, _fac) {
	var _sep = sprite_height/2;
	var _inst = instance_create_layer(x+lengthdir_x(_sep, _dir), y+lengthdir_y(_sep, _dir+90), "Instances", obj_bullet);
	with (_inst) {
		direction = _dir;
		speed = _spd;
		image_xscale = image_xscale * _scale;
		image_yscale = image_yscale * _scale;
		faction = _fac;
	}
}
