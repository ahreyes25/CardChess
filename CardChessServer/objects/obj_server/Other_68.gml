switch (ds_map_find_value(async_load, "type")) {
	
	// Client Connect
	case network_type_connect:
		var _socket = ds_map_find_value(async_load, "socket");
		ds_list_add(sockets, _socket);
		
		// Make First Connection White Team
		if (ds_list_size(sockets) == 1) {
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, DATA.TEAM);
			buffer_write(buffer, buffer_u8, TEAM.WHITE);
			network_send_packet(sockets[| 0], buffer, buffer_tell(buffer));
		}
		
		// Make Second Connection Blue Team
		if (ds_list_size(sockets) == 2) {
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, DATA.TEAM);
			buffer_write(buffer, buffer_u8, TEAM.BLUE);
			network_send_packet(sockets[| 1], buffer, buffer_tell(buffer));
		}
		break;
	
	// Client Disconnect
	case network_type_disconnect:
		var _socket = ds_map_find_value(async_load, "socket");
		ds_list_delete(sockets, ds_list_find_index(sockets, _socket));
		break;
	
	// Incoming Packets
	case network_type_data:
		var _buffer = ds_map_find_value(async_load, "buffer");
		var _socket	= ds_map_find_value(async_load, "socket");
		buffer_seek(_buffer, buffer_seek_start, 0);
	break;
	
}