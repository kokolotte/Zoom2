function clear_field(){
	with(obj_par_Enemy) {
		instance_destroy();
	}
	with(obj_Bullet) {
		if(faction == factions.enemy) {
			instance_destroy();
		}
	}
	
	with(obj_Game) {
		// disable minion spawn
		alarm[0] = -1;
		alarm[1] = -1;
		alarm[2] = -1;
	}
}