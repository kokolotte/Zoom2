/// @desc Splitter.

instance_destroy();

direction = irandom(360);

var i = 0; repeat(24) {
	create_bullet(x, y, direction + i*15, 2.75, faction, bullet_types.neutral);
	i++;
}