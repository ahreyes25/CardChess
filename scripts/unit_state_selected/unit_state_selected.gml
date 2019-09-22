show_info = true;

if (player.unit_selected != id)
	state = unit_state_idle;
	
// Toggle Between Show Movement & Show Attack
if (player.unit_touching != undefined && player.unit_touching != noone && player.unit_touching == id) {
	if (mouse_check_button_pressed(mb_left)) {
		show_move	= true;
		show_attack = false;
	}
	else if (mouse_check_button_pressed(mb_left)) {
		show_move	= false;
		show_attack = true;
	}
}

// Move
if (mouse_check_button_pressed(mb_left)) {
	var _board_coords = world_to_board(mouse_x, mouse_y, board);
	var _u = _board_coords[_.X];
	var _v = _board_coords[_.Y];
	
	// Make Sure Space Is On The Board
	if (in_bounds(board.grid, _u, _v) && board_space_empty(board, _u, _v)) {
		var _move_u = _u - board_u; 
		var _move_v = _v - board_v;
		
		// Check If Clicked Space Is In Our Move Config Array
		for (var i = 0; i < array_length_1d(move_config); i++) {
			var _conf = move_config[i];
			var _x = _conf[_.X];
			var _y = _conf[_.Y];
			
			// Valid Space, Move There
			if (_x == _move_u && _y == _move_v) {
				
				// Store Old Position
				var _old_u = board_u;
				var _old_v = board_v;
				
				// Clear Data
				board_space_clear_data(board, board_u, board_v);
				
				// Update u,v Position
				board_u = _u;
				board_v = _v;
				
				// Update x,y Position
				var _world_coords = board_to_world(_u, _v, true);
				x = _world_coords[_.X];
				y = _world_coords[_.Y];
				
				// Update State
				state = unit_state_idle;
				
				// Update Remote Player
				network_unit_update_position_write(_old_u, _old_v, board_u, board_v);
				break;	
			}
		}
	}
}	