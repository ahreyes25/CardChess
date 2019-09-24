buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, DATA.DRAW);
network_send_packet(obj_player_remote.sockets[| 0], global.buffer, buffer_tell(global.buffer));