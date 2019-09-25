/// @param piece_instance*

if (argument_count == 1)
	var _unit = argument[0];
else
	var _unit = id;

var _attack_config = [];
var _size = max(_unit.board.grid_width, _unit.board.grid_height);

switch (_unit.unit_type) {
	
	case UNIT.KING:
		_attack_config = [[0, -1], [-1, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0]];
	break;
	
	#region Queen
	case UNIT.QUEEN:
		// Diagonals
		for	(var i = 1; i < _size; i++) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v + i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v + i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v + i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, i];	
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, i];	
		}
		
		for	(var i = -1; i >= -_size; i--) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v + i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v + i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v + i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, i];	
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, i];	
		}
		
		for	(var i = 1; i < _size; i++) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v - i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v - i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v - i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, -i];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, -i];
		}
		
		for	(var i = -1; i >= -_size; i--) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v - i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v - i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v - i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, -i];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, -i];
		}
		
		// Perpendiculars
		for	(var i = 1; i < _size; i++) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, 0];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, 0];
		}
		
		for	(var i = -1; i >= -_size; i--) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, 0];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, 0];
		}
		
		for	(var j = 1; j < _size; j++) {
			if (in_bounds(obj_board.grid, _unit.board_u, _unit.board_v + j) && !board_space_empty(obj_board, _unit.board_u, _unit.board_v + j)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u, _unit.board_v + j);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [0, j];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [0, j];
		}
		
		for	(var j = -1; j >= -_size; j--) {
			if (in_bounds(obj_board.grid, _unit.board_u, _unit.board_v + j) && !board_space_empty(obj_board, _unit.board_u, _unit.board_v + j)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u, _unit.board_v + j);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [0, j];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [0, j];
		}
		break;
	#endregion
	
	#region Bishop
	case UNIT.BISHOP:
		// Diagonals
		for	(var i = 1; i < _size; i++) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v + i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v + i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v + i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, i];	
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, i];	
		}
		
		for	(var i = -1; i >= -_size; i--) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v + i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v + i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v + i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, i];	
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, i];	
		}
		
		for	(var i = 1; i < _size; i++) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v - i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v - i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v - i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, -i];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, -i];
		}
		
		for	(var i = -1; i >= -_size; i--) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v - i) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v - i)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v - i);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, -i];
				break;
			}
			
			_attack_config[array_length_1d(_attack_config)] = [i, -i];
		}
		break;
	#endregion
	
	#region Rook
	case UNIT.ROOK:
		for	(var i = 1; i < _size; i++) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, 0];
				break;
			}
				
			_attack_config[array_length_1d(_attack_config)] = [i, 0];
		}
			
		for	(var i = -1; i >= -_size; i--) {
			if (in_bounds(obj_board.grid, _unit.board_u + i, _unit.board_v) && !board_space_empty(obj_board, _unit.board_u + i, _unit.board_v)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u + i, _unit.board_v);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [i, 0];
				break;
			}
				
			_attack_config[array_length_1d(_attack_config)] = [i, 0];
		}
		
		for	(var j = 1; j < _size; j++) {
			if (in_bounds(obj_board.grid, _unit.board_u, _unit.board_v + j) && !board_space_empty(obj_board, _unit.board_u, _unit.board_v + j)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u, _unit.board_v + j);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [0, j];
				break;
			}
				
			_attack_config[array_length_1d(_attack_config)] = [0, j];
		}
		
		for	(var j = -1; j >= -_size; j--) {
			if (in_bounds(obj_board.grid, _unit.board_u, _unit.board_v + j) && !board_space_empty(obj_board, _unit.board_u, _unit.board_v + j)) {
				var _existing_unit = board_space_get_unit(obj_board, _unit.board_u, _unit.board_v + j);
				if (_existing_unit.team != _unit.team)
					_attack_config[array_length_1d(_attack_config)] = [0, j];
				break;
			}
				
			_attack_config[array_length_1d(_attack_config)] = [0, j];
		}
		break;
	#endregion
	
	case UNIT.KNIGHT:
		_attack_config = [[-2, -1], [-1, -2], [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1]];
		break;
	
	case UNIT.PAWN:
		_attack_config = [[-1, -1], [1, -1]];
		break;
}

return _attack_config;