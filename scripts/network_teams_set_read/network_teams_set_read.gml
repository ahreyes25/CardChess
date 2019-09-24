var _buffer = argument0;

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
	network_destroy(sockets[| 0]);
	ds_list_delete(sockets, 0);
	server = network_create_server(network_socket_tcp, 50001, 1);
}
// Connect to New Player Server
else if (!is_host) {
	network_destroy(sockets[| 0]);
	sockets[| 0] = network_create_socket(network_socket_tcp);
	network_connect(sockets[| 0], ip, 50001);
}