/// @param player_from*
/// @param player_to*
#region Arguments
if (argument_count == 2) {
	var _player_from	= argument[0];
	var _player_to		= argument[1];
}
else if (argument_count == 1) {
	var _player_from	= argument[0];
	var _player_to		= id;
}
else {
	var _player_from	= id;
	var _player_to		= id;	
}
#endregion
#region Exit Conditions
if (!instance_exists(_player_from)) return undefined;
if (!instance_exists(_player_to))	return undefined;
#endregion

if (_player_from.deck != undefined && !ds_exists(_player_from.deck, ds_type_list)) return undefined;
if (_player_to.hand != undefined && !ds_exists(_player_to.hand, ds_type_list)) return undefined;

var _card_id = undefined;
if (_player_from.deck_size > 0) {
	
	// Remove Card From Deck
	_card_id = _player_from.deck[| 0];
	ds_list_delete(_player_from.deck, 0);
	_player_from.deck_size--;

	// Create Card Instance
	var _card	= card_create(_card_id, _player_to, _player_to.hand_x, _player_to.hand_y);
	_card.state = card_state_idle;

	// Add Card To Hand If Space
	if (hand_size < hand_limit) {
		ds_list_add(_player_to.hand, _card);
		_player_to.hand_size++;
	}
	// Send Card To Discard If No Space In Hand
	else
		ds_list_add(_player_from.discard, _card_id);
}
	
player_next_action(_player_to);

return _card_id;