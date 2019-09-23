/// @param deck_list

var _deck = argument0;

if (!ds_exists(_deck, ds_type_list)) 
	return;

buffer_seek(global.buffer, buffer_seek_start, 0);

for (var i = 0; i < ds_list_size(_deck); i++) {
	buffer_write(global.buffer, buffer_u8, _deck[| i]);	
}

