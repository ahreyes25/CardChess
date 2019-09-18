/// @param player*

if (argument_count == 1)
	var _player = argument[0];
else
	var _player = id;

if (!instance_exists(_player)) return undefined;

var _deck	= _player.deck;
var _hand	= _player.hand;

if (_deck != undefined && !ds_exists(_deck, ds_type_list)) return undefined;
if (_hand != undefined && !ds_exists(_hand, ds_type_list)) return undefined;

var _card_id = _deck[| 0];
ds_list_delete(_deck, 0);

var _card = card_create_at_pos(_card_id, _player, _player.hand_x, _player.hand_y);
_card.state = card_state_idle;

ds_list_add(_hand, _card);

return _card_id;