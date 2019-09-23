/// @param buffer
var _buffer = argument0;

buffer_seek(_buffer, buffer_seek_start, 0);
		
switch (buffer_read(_buffer, buffer_u8)) {
	#region Set Starting Team
	case DATA.TEAM:
		// Set Local Player Team
		obj_player_local.team = buffer_read(_buffer, buffer_u8);
		
		// Set Remote Player Team
		if (obj_player_local.team == TEAM.WHITE)
			obj_player_remote.team = TEAM.BLUE;
		else
			obj_player_remote.team = TEAM.WHITE;
		
		is_host = (obj_player_local.team == TEAM.WHITE);
			
		// Create Server 
		if (is_host && server == undefined) {
			network_destroy(socket);
			socket = undefined;
			server = network_create_server(network_socket_tcp, 50001, 1);
			buffer_seek(global.buffer, buffer_seek_start, 0);
			buffer_write(global.buffer, buffer_u8, DATA.BOARD_SIZE);
			buffer_write(global.buffer, buffer_u8, board.grid_width);
			buffer_write(global.buffer, buffer_u8, board.grid_height);
		}
		// Connect to New Player Server
		else if (!is_host) {
			network_destroy(socket);
			socket = network_create_socket(network_socket_tcp);
			is_connected = network_connect(socket, ip, 50001);
		}
	break;
	#endregion
	
	#region Set Starting Board Size
	case DATA.BOARD_SIZE:
		var _board_w = buffer_read(_buffer, buffer_u8);
		var _board_h = buffer_read(_buffer, buffer_u8);
		board.grid_width	= _board_w;
		board.grid_height	= _board_h;
		ds_grid_destroy(board.grid);
		board.grid = ds_grid_create(_board_w, _board_h);
		board.x = (room_width  / 2) - (board.grid_width  * board.space_width)  / 2;
		board.y = (room_height / 2) - (board.grid_height * board.space_height) / 2;
	break;
	#endregion
	
	// Create Unit
	case DATA.UNIT_CREATE:
		network_unit_create_read(_buffer);
	break;
	
	// Move Unit
	case DATA.UNIT_MOVE:
		network_unit_update_position_read(_buffer);
	break;
	
	// Destroy Unit
	case DATA.UNIT_DESTROY:
		network_unit_destroy_read(_buffer);
	break;
	
	// End Turn
	case DATA.TURN_END:
		turn_end();
	break;
}