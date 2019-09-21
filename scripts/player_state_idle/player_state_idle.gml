// Select Unit Movement
if (mouse_check_button_pressed(mb_left)) {
	if (unit_touching != undefined && unit_touching != noone && unit_touching.team == team) {
		unit_touching.state	= unit_state_selected;
		unit_selected = unit_touching;
		unit_selected.show_move   = true;
		unit_selected.show_attack = false;
	}
}
// Select Unit Attack
else if (mouse_check_button_pressed(mb_right)) {
	if (unit_touching != undefined && unit_touching != noone && unit_touching.team == team) {
		unit_touching.state	= unit_state_selected;
		unit_selected = unit_touching;
		unit_selected.show_attack = true;
		unit_selected.show_move	  = false;
	}
}

// Click Off Board
if (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) {
	var _board_coords = world_to_board(mouse_x, mouse_y, board);
	var _u = _board_coords[_.X];
	var _v = _board_coords[_.Y];
	
	if (!in_bounds(board.grid, _u, _v))
		unit_selected = undefined;
}	