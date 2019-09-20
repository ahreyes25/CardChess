show_info	= true;
show_move	= true;
show_attack	= true;

if (player.unit_selected != id)
	state = unit_state_idle;

// Click On Movement Position
if (mouse_check_button_pressed(mb_left)) {
	var _board_coords = world_to_board(mouse_x, mouse_y, board);
	var _u = _board_coords[_.X];
	var _v = _board_coords[_.Y];
	
	if (in_bounds(board.grid, _u, _v)) 
		show_debug_message("u: " + string(_u) + ", v: " + string(_v));
}	