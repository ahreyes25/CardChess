event_inherited();

hand_x		= x;
hand_y		= y + 15;
deck_x		= x + 150;
deck_y		= y + 15;

// Unlockables
unit_skin		= undefined;
card_back_skin	= undefined;

// Network
sockets			= ds_list_create();
sockets[| 0]	= network_create_socket(network_socket_tcp);
ip				= "192.168.1.2";
is_host			= false;
is_connected	= network_connect(sockets[| 0], ip, 50000);
global.buffer	= buffer_create(100, buffer_fixed, 1);

// Host Server
server			= undefined;