if (state != undefined) {
	draw_set_color(c_black);
	draw_text(10, 45, "Player Local: " + string(script_get_name(state)));
	draw_set_color(c_white);
}