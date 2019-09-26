/// @param player*

#region Arguments
if (argument_count == 1)
	var _player = argument[0];
else
	var _player = id;
#endregion

if (ds_queue_size(_player.actions) > 0)
	_player.execute_action = true;
else 
	_player.execute_action = false;