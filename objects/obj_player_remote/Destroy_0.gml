event_inherited();

buffer_delete(global.buffer);
network_destroy(socket);
ds_list_destroy(sockets);

if (server != undefined) 
	network_destroy(server);