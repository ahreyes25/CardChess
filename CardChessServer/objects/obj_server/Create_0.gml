enum TEAM {
	WHITE, BLUE	
}

enum DATA {
	TEAM,
}

buffer			= buffer_create(10, buffer_fixed, 1);
server			= network_create_server(network_socket_tcp, 50000, 2);
sockets			= ds_list_create();
assigned_host	= false;