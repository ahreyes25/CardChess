// Dont Do Anything If State Hasnt Been Defined Yet
if (state == undefined) return;

// Execute State
if (state == player_state_place_unit)
	script_execute(state, unit_on_mouse);
else
	script_execute(state);

// Action Q
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