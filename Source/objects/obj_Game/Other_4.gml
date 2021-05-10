/// @desc Game state on room spawn.

switch(room) {
	case rm_Start:
		audio_group_stop_all(bgm);
		cursor = 1;
		break;
	case rm_Game:
		audio_group_stop_all(bgm);
		if(!audio_is_playing(msc_Game)) {			// prevents song overlap
			audio_play_sound(msc_Game, 2, true);	// background music, loops (true)
		}
		// spawn in player
		instance_create_layer(room_width/2, room_height-200, "Instances", obj_Player);
		// spawn in enemies
		alarm[0] = 2*room_speed;		// time before Red enemy spawns	(2s)
		alarm[1] = 12*room_speed;		// time before Blue enemy spawns (12s)
		alarm[2] = 20*room_speed;		// time before Green enemy spawns (20s)
		break;
	case rm_Win:
		audio_stop_all();
		audio_play_sound(msc_Win, 1, false);
		cursor = 1;
		break;
	case rm_Lose:
		audio_stop_all();
		audio_play_sound(msc_Lose, 1, false);
		break;
}