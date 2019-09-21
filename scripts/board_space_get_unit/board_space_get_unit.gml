/// @param board_inst
/// @param u
/// @param v

var _board	= argument0;
var _u		= argument1;
var _v		= argument2;

if (!ds_exists(_board, ds_type_grid)) return;

var _unit_map = _board.grid[# _u, _v];
return _unit_map[? "id"];