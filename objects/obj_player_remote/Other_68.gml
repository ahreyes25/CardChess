switch (ds_map_find_value(async_load, "type")) {
	
	// Client Connect
	case network_type_connect:
		var _socket = ds_map_find_value(async_load, "socket");
		ds_list_add(sockets, _socket);
	
		// Send Board Data to Player2
		network_send_packet(sockets[| 0], global.buffer, buffer_tell(global.buffer));
		break;
	
	// Client Disconnect
	case network_type_disconnect:
		var _socket = ds_map_find_value(async_load, "socket");
		ds_list_delete(sockets, ds_list_find_index(sockets, _socket));
		break;
	
	// Incoming Packets
	case network_type_data:
		var _buffer = ds_map_find_value(async_load, "buffer");
		network_read_data(_buffer);
		break;	
}
