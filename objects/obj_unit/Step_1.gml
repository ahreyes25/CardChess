depth = -y;

// Store Updated Board Position
if (state == unit_state_idle) {
	var _board_coords = world_to_board(x, y, board);
	board_u = _board_coords[_.X];
	board_v = _board_coords[_.Y];
}

// Get Updated Attack & Move Configs 
if (state == unit_state_selected && !updated_configs) {
	attack_config	= unit_get_attack_config();	
	move_config		= unit_get_move_config();
	updated_configs = true;
}