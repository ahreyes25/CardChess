draw_set_color(c_black);
if (is_host) {
	draw_text(300, 20, "Server Status: " + string(server >= 0));	
	draw_text(300, 35, "Clients Connected: " + string(ds_list_size(sockets)));
}
draw_set_color(c_white);