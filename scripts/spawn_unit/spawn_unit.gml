/// @param player*
/// @param unit_enum
#region Arguments
if (argument_count == 1) {
	var _unit	= argument[0];
	var _player	= id;
}
else if (argument_count == 2) {
	var _player	= argument[0];
	var _unit	= argument[1];
}
#endregion
#region Exit Conditions
if (!instance_exists(_player)) return undefined;
#endregion

_player.unit_on_mouse = _unit;

if (_player.card_on_mouse != undefined) {
	_player.card_on_mouse.state = card_state_return_to_hand;
	_player.card_on_mouse = undefined;
}

_player.state = player_state_place_unit;