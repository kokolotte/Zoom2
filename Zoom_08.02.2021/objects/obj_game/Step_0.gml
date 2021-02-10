/// @desc

if gamePlaying {
	steps += 1;
	time = (steps div room_speed);
	timeStr = string_replace_all((string_format((time div 3600), 2, 0) + ":" +
		string_format((time div 60), 2, 0) + ":" +
		string_format((time mod 60), 2, 0)), " ", "0");
}
