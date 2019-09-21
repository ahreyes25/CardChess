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
	
	case UNIT.QUEEN:
		// Diagonals
		for	(var i = -_size; i < _size; i++) {
			_attack_config[array_length_1d(_attack_config)] = [i,  i];
			
			// Dont Include Duplicate Center
			if (i != 0)
				_attack_config[array_length_1d(_attack_config)] = [i, -i];
		}
		
		// Perpendiculars
		for	(var i = -_size; i < _size; i++) {
			// Dont Include Duplicate Center
			if (i != 0)
				_attack_config[array_length_1d(_attack_config)] = [i, 0];
		}
		
		for	(var j = -_size; j < _size; j++) {
			// Dont Include Duplicate Center
			if (j != 0)
				_attack_config[array_length_1d(_attack_config)] = [0, j];
		}
		break;
	
	case UNIT.BISHOP:
		for	(var i = -_size; i < _size; i++) {
			_attack_config[array_length_1d(_attack_config)] = [i,  i];
			
			// Dont Include Duplicate Center
			if (i != 0)
				_attack_config[array_length_1d(_attack_config)] = [i, -i];
		}
		break;
	
	case UNIT.ROOK:
		for	(var i = -_size; i < _size; i++)
			_attack_config[array_length_1d(_attack_config)] = [i, 0];
		
		for	(var j = -_size; j < _size; j++) {
			// Dont Include Duplicate Center
			if (j != 0)
				_attack_config[array_length_1d(_attack_config)] = [0, j];
		}
		break;
	
	case UNIT.KNIGHT:
		_attack_config = [[-2, -1], [-1, -2], [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1]];
		break;
	
	case UNIT.PAWN:
		_attack_config = [[-1, -1], [1, -1]];
		break;
}

return _attack_config;