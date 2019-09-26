if (state == undefined)
	return;

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
			switch (array_length_1d(_action)) {
				
				case 2:
					var _script		= _action[0];	
					var _argument	= _action[1];
					script_execute(_script, _argument);
					break;
					
				case 3:
					var _script		= _action[0];	
					var _argument1	= _action[1];
					var _argument2	= _action[2];
					script_execute(_script, _argument1, _argument2);
					break;
			}
		}
		else
			script_execute(_action);
	}
}
#endregion