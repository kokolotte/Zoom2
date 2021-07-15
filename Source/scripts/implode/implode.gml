function implode(_x, _y, _color){
	repeat(15) {
		var inst = instance_create_layer(_x,_y,"Instances",obj_Debris);
		with(inst) {
			image_blend = _color;
		}
	}
}