/// @param buffer

var _buffer = argument0;

var _unit_type	= buffer_read(_buffer, buffer_u8);
var _u			= buffer_read(_buffer, buffer_u8);
var _v			= buffer_read(_buffer, buffer_u8);
var _v_f		= abs((board.grid_height - 1) - _v);

var _world_coords = board_to_world(_u, _v_f, true);
unit_create(_unit_type, team, _world_coords[_.X], _world_coords[_.Y], board, id);