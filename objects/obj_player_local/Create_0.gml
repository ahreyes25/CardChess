data = ds_map_create();

// Serialized Data
pid				= undefined;

team			= undefined;
board			= undefined;
state			= undefined;

deck			= ds_list_create();		// holds card_id
hand			= ds_list_create();		// holds card instance ids
discard			= ds_list_create();		// holds card_id
units			= ds_list_create();		// holds unit instance ids
actions			= ds_queue_create();	// holds script index

hand_limit		= 7;
hand_size		= 0;
deck_size		= global.deck_limit;
execute_action	= false; 
spawn_size		= global.default_spawn_size;

// Non-Serialized Data
hand_x			= x;
hand_y			= y - 40;
deck_limit		= global.deck_limit;
deck_x			= x + 150;
deck_y			= y - 15;
info_x			= x - 155;
info_y			= y - 10;
info_string		= undefined;
unit_on_mouse	= undefined;	// snapped to mouse	
card_on_mouse	= undefined;	// snapped to mouse
unit_touching	= undefined;	// mouse touching unit on board
unit_selected	= undefined;	// unit clicked on and selected

// Network
socket				= network_create_socket(network_socket_tcp);
ip					= "127.0.0.1";
is_connected		= network_connect(socket, ip, 50000);
is_host				= false;
var _buffer_bytes	= 11;
var _buffer_type	= buffer_fixed;
var _buffer_align	= 1;
buffer				= buffer_create(_buffer_bytes, _buffer_type, _buffer_align);

// Host Server
var _server_type	= network_socket_tcp;
var _port			= 50000;
server				= undefined;
socket				= undefined;