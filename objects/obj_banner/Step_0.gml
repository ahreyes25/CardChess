if (move_to_middle) {
	if (y > obj_board.y + ((obj_board.grid_height * obj_board.space_height) / 2))
		y -= move_speed;
	else
		move_to_middle = false;
}

if (move_to_top) {
	if (y > 0)
		y -= move_speed;
	else
		instance_destroy();
}

if (time != undefined && alarm[0] == -1) {
	alarm[0]	= time;
	time		= undefined;
}