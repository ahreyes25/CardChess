/// @param board_inst
/// @param u
/// @param v

var _board	= argument0;
var _u		= argument1;
var _v		= argument2;

if (!ds_exists(_board.grid, ds_type_grid)) return;

return (_board.grid[# _u, _v] == 0);