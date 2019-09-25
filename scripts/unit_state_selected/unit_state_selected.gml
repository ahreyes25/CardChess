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

#region Move & Attack
if (mouse_check_button_pressed(mb_left)) {
	var _board_coords = world_to_board(mouse_x, mouse_y, board);
	var _u = _board_coords[_.X];
	var _v = _board_coords[_.Y];
	
	// Make Sure Space Is On The Board
	if (in_bounds(board.grid, _u, _v)) {
		var _move_u = _u - board_u; 
		var _move_v = _v - board_v;
		
		// Move To Empty Space In Move Config
		if (board_space_empty(board, _u, _v)) {
			for (var i = 0; i < array_length_1d(move_config); i++) {
				var _move_conf = move_config[i];
				var _x_move = _move_conf[_.X];
				var _y_move = _move_conf[_.Y];
			
				// Valid Move Space, Move There
				if (_x_move == _move_u && _y_move == _move_v) {
				
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
				
					// Update Remote Player's Unit Position
					network_unit_update_position_write(_old_u, _old_v, board_u, board_v);
					break;	
				}
			}
		}
		// Attack & Destroy Unit
		else {
			var _other_unit = board_space_get_unit(board, _u, _v);
			if (_other_unit.team != team) {
						
				// Check If Unit Is In Attack Config
				for (var j = 0; j < array_length_1d(attack_config); j++) {
					var _attack_conf = attack_config[j];
					var _x_attack = _attack_conf[_.X];
					var _y_attack = _attack_conf[_.Y];
						
					// Valid Attack Space, Move There
					if (_x_attack == _move_u && _y_attack == _move_v) {
						
						// Destroy Local Unit
						instance_destroy(_other_unit);
						
						// Destroy Remote Unit
						network_unit_destroy_write(_u, _v);
					
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
				
						// Update Remote Player's Unit Position
						network_unit_update_position_write(_old_u, _old_v, board_u, board_v);
						break;
					}
				}
			}
		}
	}
}
#endregion