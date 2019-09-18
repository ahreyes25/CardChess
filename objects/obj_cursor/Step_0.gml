var _board_coords = world_to_board(mouse_x, mouse_y);
var _world_coords = board_to_world(_board_coords[_.X], _board_coords[_.Y]);
x = _world_coords[_.X];
y = _world_coords[_.Y];

if (instance_exists(obj_board)) {
	if (in_bounds(obj_board.grid, _board_coords[_.X], _board_coords[_.Y]))
		alpha = alpha_base;
	else
		alpha = 0;
}