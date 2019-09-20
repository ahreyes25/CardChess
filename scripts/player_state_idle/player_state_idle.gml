/*
// Pickup & Move Unit
if (mouse_check_button_pressed(mb_left)) {
	if (unit_touching != undefined && unit_touching != noone && unit_touching.team == team) {
		
		unit_moving			= unit_touching;
		unit_moving.state	= unit_state_on_mouse;
		state				= player_state_move_unit;
		board_space_clear_data(board, unit_moving.board_u, unit_moving.board_v);
	}
}
*/

// Select & Highlight Unit
if (mouse_check_button_pressed(mb_left)) {
	if (unit_touching != undefined && unit_touching != noone && unit_touching.team == team) {
		unit_touching.state	= unit_state_selected;
		unit_selected = unit_touching;
	}
	else 
		unit_selected = undefined;
}