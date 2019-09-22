switch (ds_map_find_value(async_load, "type")) {
	
	// Incoming Packets
	case network_type_data:
		var _buffer = ds_map_find_value(async_load, "buffer");
		buffer_seek(_buffer, buffer_seek_start, 0);
		
		// Read Data
		var _data_tag = buffer_read(_buffer, buffer_u8);
		if (_data_tag == DATA.TEAM) {
			team = buffer_read(_buffer, buffer_u8);
			is_host = (team == TEAM.WHITE);
			
			// Create Server 
			if (is_host) {
				
			}
		}
		
	break;	
}
