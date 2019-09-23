team		= undefined;
board		= undefined;
has_king	= false;

// Display Enemy Card Backs
hand_x		= x;
hand_y		= y + 15;
hand		= ds_list_create();
hand_size	= global.starting_hand_size;
hand_limit	= global.starting_hand_limit;

// Display Enemy Deck
deck_size	= global.deck_limit;
deck_x		= x + 150;
deck_y		= y + 15;
deck		= ds_list_create();

// Add Cards to Deck
repeat (deck_size)
	ds_list_add(deck, CARD.BACK);

// Network
socket			= network_create_socket(network_socket_tcp);
ip				= "127.0.0.1";
is_host			= false;
is_connected	= network_connect(socket, ip, 50000);
global.buffer	= buffer_create(10, buffer_fixed, 1);

// Host Server
server			= undefined;
sockets			= ds_list_create();