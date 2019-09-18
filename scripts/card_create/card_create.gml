/// @param card_id
/// @param player*
/// @param x
/// @param y

#region Arguments
var _card_id = argument[0];
if (argument_count == 4) {
	var _player = argument[1];
	var _x		= argument[2];
	var _y		= argument[3];
}
else {
	var _player = id;
	var _x		= argument[1];
	var _y		= argument[2];
}
#endregion

if (!instance_exists(_player)) return undefined;

var _card			= instance_create_layer(_x, _y, "Hands", obj_card);
_card.card_id		= _card_id;
_card.sprite_index	= global.card_data[_card_id, CP.SPRITE];
_card.image_index	= _player.team;
_card.image_speed	= 0;
_card.player		= _player;

return _card;