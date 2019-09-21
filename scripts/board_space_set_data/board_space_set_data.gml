/// @param board_inst
/// @param u
/// @param v
/// @param data_map

var _board	= argument0;
var _u		= argument1;
var _v		= argument2;
var _map	= argument3;

if (!ds_exists(_board.grid, ds_type_grid)) return;
if (!ds_exists(_map, ds_type_map)) return;

_board.grid[# _u, _v] = _map;