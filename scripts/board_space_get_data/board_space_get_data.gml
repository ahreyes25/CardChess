/// @param board_inst
/// @param u
/// @param v

var _board	= argument0;
var _u		= argument1;
var _v		= argument2;

if (!ds_exists(_board, ds_type_grid)) return;
if (!instance_exists(_unit)) return;

return _board.grid[# _u, _v];