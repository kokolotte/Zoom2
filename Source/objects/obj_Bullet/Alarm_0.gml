/// @desc Splitter.

instance_destroy();

direction = irandom(360);

var i = 0; repeat(30) {
	create_bullet(x, y, direction + i*12, 3.5, faction, bullet_types.neutral);
	i++;
}