if (state != undefined) {
	draw_set_color(c_black);
	draw_text(10, 20, "Game: " + string(script_get_name(state)));
	draw_set_color(c_white);
}