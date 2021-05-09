/// @func create_bullet(_x, _y, _direction, _creator)
/// @param _x			x position
/// @param _y			y position
/// @param _direction	bullet direction
/// @param _speed		bullet speed
/// @param _faction		bullet source

function create_bullet(_x, _y, _direction, _speed, _faction, _bullet_type) {

	// create instance
	
	if(_faction == factions.ally) {
		object_set_sprite(obj_Bullet, spr_PlayerBullet);
	} else {
		object_set_sprite(obj_Bullet, spr_EnemyBullet);
	}
	_instance = instance_create_layer(_x, _y, "Instances", obj_Bullet);
	
	// set instance values
	
	with(_instance) {
		direction = _direction;
		image_angle = direction;
		speed = _speed;
		faction = _faction;
		bullet_type = _bullet_type;
	}
}