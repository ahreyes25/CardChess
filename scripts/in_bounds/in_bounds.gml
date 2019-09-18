/// @param grid
/// @param u
/// @param v

var _grid	= argument0;
var _u		= argument1;
var _v		= argument2;

if (!ds_exists(_grid, ds_type_grid)) return;

return (_u >= 0 && _u < ds_grid_width(_grid) && _v >= 0 && _v < ds_grid_height(_grid));