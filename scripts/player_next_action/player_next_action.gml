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

if (_player.actions != undefined && _player.action_index < array_length_1d(_player.actions) - 1) {
	_player.action_index++;
	_player.execute_action = true;
}
else {
	_player.actions = undefined;
	_player.execute_action = false;
}