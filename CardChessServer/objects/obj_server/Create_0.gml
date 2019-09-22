global_game_data();

var _buffer_bytes	= 11;
var _buffer_type	= buffer_fixed;
var _buffer_align	= 1;
var _server_type	= network_socket_tcp;
var _port			= 50000;
var _max_clients	= 2;

buffer				= buffer_create(_buffer_bytes, _buffer_type, _buffer_align);
server				= network_create_server(_server_type, _port, _max_clients);
sockets				= ds_list_create();