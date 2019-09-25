buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, DATA.HAND_UPDATE);

for (var i = 0; i < ds_list_size(obj_player_local.hand); i++)
	buffer_write(global.buffer, buffer_u8, obj_player_local.hand[| i].card_id);	
	
network_send_packet(obj_player_remote.sockets[| 0], global.buffer, buffer_tell(global.buffer));