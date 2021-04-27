/// @desc Collision detection.

if(other.faction == faction) exit;	// friendly object
if(invincible) exit;				// invincible, no hit detection

event_perform(ev_other, ev_user1);
