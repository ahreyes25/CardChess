/// @param unit_enum

var _unit = argument0;

unit_on_mouse = _unit;

// Place King
if (mouse_check_button_pressed(mb_left)) {
	
	var _board_coords = world_to_board(mouse_x, mouse_y, board);
	var _u = _board_coords[_.X];
	var _v = _board_coords[_.Y];
	
	// In Bounds And Nothing Already Stored There
	if (in_bounds(board.grid, _u, _v) && board.grid[# _u, _v] == 0) {
		
		// Check That Space Is Withing Spawn Zone
		if ((team == TEAM.WHITE && _v < board.grid_height && _v >= board.grid_height - spawn_size) ||
			(team == TEAM.BLUE && _v >= 0 && _v < spawn_size)) {
					
				unit_on_mouse = undefined;
		
				var _world_coords = board_to_world(_u, _v, true);
				var _unit = unit_create(_unit, team, _world_coords[_.X], _world_coords[_.Y], board);
				ds_list_add(units, _unit);
		
				state = player_state_idle;		
				player_action_start_next();
		}
	}
}