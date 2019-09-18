/// @param u
/// @param v
/// @param center?*

var _u = argument[0];
var _v = argument[1];

if (argument_count == 3)
	var _center = argument[2];
else
	var _center = false;

if (!instance_exists(obj_board)) return;

if (_center) {
	return [
		obj_board.x + (_u * obj_board.space_width)  + (obj_board.space_width  * 0.50),
		obj_board.y + (_v * obj_board.space_height) + (obj_board.space_height * 0.75),
	];
}
else {
	return [
		obj_board.x + (_u * obj_board.space_width),
		obj_board.y + (_v * obj_board.space_height),
	];
}