event_inherited();

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
	
#region Alert Actions
if (alert_unit_actions && alarm[1] == -1)
	alarm[1] = 120;	
else if (alarm[1] mod 10 == 0)
	draw_unit_alert = !draw_unit_alert;
else if (!alert_unit_actions && alarm[1] == -1)
	draw_unit_alert = true;
	
if (alert_card_actions && alarm[2] == -1)
	alarm[2] = 120;	
else if (alarm[2] mod 10 == 0)
	draw_card_alert = !draw_card_alert;
else if (!alert_card_actions && alarm[2] == -1)
	draw_card_alert = true;
#endregion