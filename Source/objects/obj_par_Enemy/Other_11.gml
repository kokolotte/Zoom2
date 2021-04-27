/// @desc Take damage.

hitpoints -= 1;			// subtract health

if(hitpoints <= 0) {	// no health, destroy instance
	switch(object_index) {	// score depending on enemy type
		case obj_enemy_Red: score += 15; break;
		case obj_enemy_Blue: score += 30; break;
		case obj_enemy_Green: score += 50; break;
	}
	instance_destroy();
}