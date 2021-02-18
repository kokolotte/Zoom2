/// @func create_bullet(_x, _y, _direction, _creator, bullet_type)
/// @desc				Creates a bullet! Wow!
/// @param _x			x position
/// @param _y			y position
/// @param _direction	bullet direction
/// @param _creator		bullet source
/// @param bullet_type	bullet type

function create_bullet(_x, _y, _direction, _creator, bullet_type) {

	// create instance
	
	_instance = instance_create_layer(_x, _y, "Instances", bullet_type);
	
	// set instance values
	
	with(_instance) {
		direction = _direction;
		image_angle = direction;
		creator = _creator;
	}
}