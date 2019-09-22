/// @param buffer

var _buffer = argument0;

var _u		= buffer_read(_buffer, buffer_u8);
var _v		= buffer_read(_buffer, buffer_u8);
var _v_f	= abs((board.grid_height - 1) - _v);
var _unit	= board_space_get_unit(board, _u, _v_f);
instance_destroy(_unit);