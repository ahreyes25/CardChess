/// @param buffer

var _buffer = argument0;

ds_list_clear(obj_player_remote.deck);

for (var i = 0; i < buffer_get_size(_buffer) - 1; i++)
	obj_player_remote.deck[| i] = buffer_read(_buffer, buffer_u8);	

obj_player_remote.deck_loaded = true;