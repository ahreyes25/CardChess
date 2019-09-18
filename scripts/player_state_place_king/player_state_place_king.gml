unit_on_mouse = UNIT.KING;

// Place King
if (mouse_check_button_pressed(mb_left)) {
	var _board_coords = world_to_board(mouse_x, mouse_y, board);
	
	if (in_bounds(board.grid, _board_coords[_.X], _board_coords[_.Y])) {
		
		unit_on_mouse = undefined;
		
		var _world_coords = board_to_world(_board_coords[_.X], _board_coords[_.Y], true);
		var _unit = unit_create(UNIT.KING, team, _world_coords[_.X], _world_coords[_.Y], board, true);
		
		state = player_state_idle;
	}
}