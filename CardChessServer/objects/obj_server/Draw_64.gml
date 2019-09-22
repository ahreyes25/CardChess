draw_text(10, 10, "Server Status: " + string(server >= 0));
draw_text(10, 20, "Total Clients: " + string(ds_list_size(sockets)));