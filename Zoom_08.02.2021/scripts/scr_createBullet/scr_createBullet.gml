/// @function createBullet(x, y, dir, spd, fac, num, creator, guntype)
/// @param {real} x
/// @param {real} y
/// @param {real} dir
/// @param {real} spd
/// @param {enum} fac
/// @param {int} num
/// @param creator
/// @param gunType*

function createBullet(_x, _y, _dir, _spd, _fac, _num, _creator, _gunType) {
	
	//Choose gun type
	switch(_gunType) {
		case gunTypes.spread:
			for (i = 0; i < _num; i++) {
				var _inst = instance_create_layer(_x, _y, "Instances", obj_bullet);
				initialiseBullet(_dir+((i-((_num-1)/2))*(45/_num)), _spd, _fac, _creator, _inst);
			}
			break;
		/*
		case gunTypes.three_bullets:
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialiseBullet(_dir, _spd, _fac, _creator, inst);
		
		case gunTypes.two_bullets:
			
			var _sep = 12;
			
			var inst = instance_create_layer(x+lengthdir_x(_sep, _dir+90), y+lengthdir_y(_sep, _dir+90), "Instances", obj_bullet);
			initialiseBullet(_dir, _spd, _fac, _creator, inst);
			var inst = instance_create_layer(x+lengthdir_x(_sep, _dir-90), y+lengthdir_y(_sep, _dir-90), "Instances", obj_bullet);
			initialiseBullet(_dir, _spd, _fac, _creator, inst);
			break;
		
		case gunTypes.four_bullets:
			
			var _sep = 7, bulletAngle;
			
			var i = 0;
			repeat(4) {
				bulletAngle = _dir + (i++*90);
				var inst = instance_create_layer(x+lengthdir_x(_sep, bulletAngle), y+lengthdir_y(_sep, bulletAngle), "Instances", obj_bullet);
				initialiseBullet(bulletAngle, _spd, _fac, _creator, inst);
			}
			break;
		
		case gunTypes.eight_bullets:
			
			var _sep = 7, bulletAngle;
			
			var i = 0;
			repeat(8) {
				bulletAngle = _dir + (i++*45);
				var inst = instance_create_layer(x+lengthdir_x(_sep, bulletAngle), y+lengthdir_y(_sep, bulletAngle), "Instances", obj_bullet);
				initialiseBullet(bulletAngle, _spd, _fac, _creator, inst);
			}
			break;
		
		case gunTypes.laser:
			var inst = instance_create_layer(x, y, "Instances", obj_laser);
			initialiseBullet(_dir, _spd, _fac, _creator, inst);
			break;
		*/
		default:
			var inst = instance_create_layer(_x, _y, "Instances", obj_bullet);
			initialiseBullet(_dir, _spd, _fac, _creator, inst);
			break;
	}
	
	
	
	
	
}


/// @function initialiseBullet(dir, spd, fac)
/// @param {real} dir
/// @param {real} spd
/// @param {enum} fac
/// @param creator
/// @param bulletInstance

function initialiseBullet(_dir, _spd, _fac, _creator, _bulletInst) {
	with(_bulletInst) {
		direction = _dir;
		if(object_index == obj_bullet) speed = _spd;
		faction = _fac;
		creator = _creator;
	}
}




/*
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


/// @function initialiseBullet(x, y, dir, scale, size)
/// @param {int} dir The direction the bullet will travel
/// @param {int} spd The speed the bullet moves at
/// @param {int} scale The radius of the bullet
/// @param fac The faction the bullet belongs to
/// @desc Create an instance of obj_bullet and set the direction, speed, and size.
*/