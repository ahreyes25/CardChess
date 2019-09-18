if (state == player_state_place_unit)
	script_execute(state, unit_on_mouse);
else
	script_execute(state);

// Action Q
if (actions != undefined && execute_action) {
	
	execute_action = false;
	
	var _action = actions[action_index];
	if (is_array(_action)) {
		var _script		= _action[0];	
		var _argument	= _action[1];
		script_execute(_script, _argument);
	}
	else
		script_execute(_action);
}

// Test Draw
if (keyboard_check_pressed(ord("P")))
	if (can_draw && hand_size < hand_limit && deck_size > 0)
		draw_card();
		
