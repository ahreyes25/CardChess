if (state == undefined) return;	// Check That State Is Defined

#region Execute State
switch (state) {
	case player_state_place_unit:
		script_execute(state, unit_on_mouse);
		break;
	
	default: 
		script_execute(state);
		break;
}
#endregion

#region Action Q
if (actions != undefined && execute_action) {
	
	execute_action = false;
	var _action = ds_queue_dequeue(actions);
	
	if (_action != undefined) {
		if (is_array(_action)) {
			var _script		= _action[0];	
			var _argument	= _action[1];
			script_execute(_script, _argument);
		}
		else
			script_execute(_action);
	}
}
#endregion

#region Touching Unit
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
#endregion