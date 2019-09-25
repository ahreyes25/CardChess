/// @param x
/// @param y
/// @param board*

var _x = argument[0];
var _y = argument[1];

if (argument_count == 3)
	var _board = argument[2];
else
	var _board = obj_board;

return [
	floor((_x - _board.x) / _board.space_width),
	floor((_y - _board.y) / _board.space_height),
];