team		= undefined;
board		= undefined;
hand_size	= 0;
deck_size	= global.deck_limit;
has_king	= false;

// Network
socket			= network_create_socket(network_socket_tcp);
ip				= "127.0.0.1";
is_host			= false;
is_connected	= network_connect(socket, ip, 50000);
global.buffer	= buffer_create(10, buffer_fixed, 1);

// Host Server
server			= undefined;
sockets			= ds_list_create();