buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, DATA.TURN_END);

if (obj_player_remote.is_host)
	network_send_packet(obj_player_remote.sockets[| 0], global.buffer, buffer_tell(global.buffer));
else
	network_send_packet(obj_player_remote.socket, global.buffer, buffer_tell(global.buffer));