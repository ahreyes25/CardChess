/// @param buffer

var _buffer = argument0;

// Remove Card From Hand
if (buffer_get_size(_buffer) - 1 < ds_list_size(obj_player_remote.hand)) {
	
	var _incoming_hand = ds_list_create();
	for (var i = 0; i < buffer_get_size(_buffer) - 1; i++)
		_incoming_hand[| i] = buffer_read(_buffer, buffer_u8);
		
	var _existing_hand = ds_list_create();
	for (var i = 0; i < ds_list_size(obj_player_remote.hand); i++)
		_existing_hand[| i] = obj_player_remote.hand[| i].card_id;
		
	ds_list_sort(_incoming_hand, true);
	ds_list_sort(_existing_hand, true);
	
	if (_incoming_hand[| 0] == _existing_hand[| 0])
		var _odd_card_out = _existing_hand[| ds_list_size(_existing_hand) - 1];
	else
		var _odd_card_out = _existing_hand[| 0];
		
	for (var i = 0; i < ds_list_size(obj_player_remote.hand); i++) {
		var _current_card = obj_player_remote.hand[| i];
		if (_current_card.card_id == _odd_card_out) {
			ds_list_delete(obj_player_remote.hand, ds_list_find_index(obj_player_remote.hand, _current_card));
			instance_destroy(_current_card);
			break;	
		}
	}
	
	ds_list_destroy(_incoming_hand);
	ds_list_destroy(_existing_hand);
}
// Add Card To Hand
else if (buffer_get_size(_buffer) - 1 > ds_list_size(obj_player_remote.hand)) {
		
}