/// @desc Phase shift.

invincible = false;

if(instance_number(obj_Boss_Weapon) < 4) {
	var L2 = instance_create_layer(x, y, "Instances", obj_Boss_Weapon);
	var R2 = instance_create_layer(x, y, "Instances", obj_Boss_Weapon);

	with(L2) {
		orientation = 1;
		side = "L";
	}

	with(R2) {
		orientation = 1;
		side = "R";
	}
}