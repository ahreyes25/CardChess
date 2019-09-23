/// @param buffer
var _buffer = argument0;

var _u_old		= buffer_read(_buffer, buffer_u8);
var _v_old		= buffer_read(_buffer, buffer_u8);
var _u_new		= buffer_read(_buffer, buffer_u8);
var _v_new		= buffer_read(_buffer, buffer_u8);
var _u_new_f	= abs((board.grid_width  - 1) - _u_new);
var _u_old_f	= abs((board.grid_width  - 1) - _u_old);
var _v_new_f	= abs((board.grid_height - 1) - _v_new);
var _v_old_f	= abs((board.grid_height - 1) - _v_old);

var _unit = board_space_get_unit(board, _u_old_f, _v_old_f);
				
// Clear Data
board_space_clear_data(_unit.board, _unit.board_u, _unit.board_v);
				
// Update u,v Position
_unit.board_u = _u_new_f;
_unit.board_v = _v_new_f;
				
// Update x,y Position
var _world_coords = board_to_world(_u_new_f, _v_new_f, true);
_unit.x = _world_coords[_.X];
_unit.y = _world_coords[_.Y];
				
// Update State
_unit.state = unit_state_idle;