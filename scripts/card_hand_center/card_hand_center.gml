/// @param card_inst*

if (argument_count == 1)
	var _card = argument[0];
else
	var _card = id;

var _space_between_cards = 0;
if (ds_exists(_card.player.hand, ds_type_list)) {
	
	var _index			= ds_list_find_index(_card.player.hand, _card);	
	var _card_width		= sprite_get_width(_card.sprite_index);
	var _card_offset	= (_card_width + _space_between_cards) * _index;
	var _hand_offset	= _card_width * (_card.player.hand_size - 1) / 2;
	_card.x				= player.hand_x + _card_offset - _hand_offset;	
}