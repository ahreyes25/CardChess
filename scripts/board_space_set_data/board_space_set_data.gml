/// @param board_inst
/// @param u
/// @param v
/// @param unit_inst

var _board	= argument0;
var _u		= argument1;
var _v		= argument2;
var _unit	= argument3;

if (!ds_exists(_board.grid, ds_type_grid)) return;
if (!instance_exists(_unit)) return;

_board.grid[# _u, _v] = _unit.data;