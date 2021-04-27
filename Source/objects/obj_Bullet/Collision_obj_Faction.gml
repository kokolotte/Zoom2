/// @desc Collision detection.

if(other.faction == faction) exit;	// friendly object, do not destroy
instance_destroy();					// alien object, destroy

with(other) event_perform(ev_other, ev_user1);	// consequence