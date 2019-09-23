event_inherited();

// Touching Unit
var _board_coords	= world_to_board(mouse_x, mouse_y, board);
var _mouse_u		= _board_coords[_.X];
var _mouse_v		= _board_coords[_.Y];

if (in_bounds(board.grid, _mouse_u, _mouse_v)) {	
	var _world_coords	= board_to_world(_mouse_u, _mouse_v);
	var _mouse_x		= _world_coords[_.X];
	var _mouse_y		= _world_coords[_.Y];

	unit_touching = collision_rectangle(
						_mouse_x + 1,
						_mouse_y + 1,
						_mouse_x + board.space_width  - 1,
						_mouse_y + board.space_height - 1,
						obj_unit,
						false,
						true
					);
}
else
	unit_touching = undefined;