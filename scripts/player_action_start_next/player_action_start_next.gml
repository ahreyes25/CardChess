/// @param player*
#region Arguments
if (argument_count == 1)
	var _player = argument[0];
else
	var _player = id;
#endregion
#region Exit Conditions
if (!instance_exists(_player)) return undefined;
if (!variable_instance_exists(_player, "execute_action")) return undefined;
if (!variable_instance_exists(_player, "actions")) return undefined;
#endregion

if (ds_queue_size(_player.actions) > 0)
	_player.execute_action = true;
else 
	_player.execute_action = false;