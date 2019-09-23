buffer_delete(global.buffer);
network_destroy(socket);
ds_list_destroy(sockets);
ds_list_destroy(hand);
ds_list_destroy(deck);

if (server != undefined) 
	network_destroy(server);