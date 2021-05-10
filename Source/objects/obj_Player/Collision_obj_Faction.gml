/// @desc Collision detection.

if(other.faction == faction) exit;	// friendly object
if(invincible) exit;				// invincible, no hit detection

if(other.object_index == obj_enemy_Green) {
	with(obj_enemy_Green) hitpoints = 0;
}
event_perform(ev_other, ev_user1);
