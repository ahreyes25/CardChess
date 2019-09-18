/// @param player*
#region Arguments
if (argument_count == 1)
	var _player = argument[0];
else
	var _player = id;
#endregion
#region Exit Conditions
if (!instance_exists(_player)) return undefined;
#endregion

_player.action_index = 0;
_player.execute_action = true;