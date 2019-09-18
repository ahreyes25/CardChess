var _counter = 0;

for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		draw_sprite(board_sprite, (i + j) mod 2, x + (i * space_width), y + (j * space_height));
		_counter++;
	}
	draw_sprite(board_edge_sprite, (i mod 2 == 0), x + (i * space_width), y + (space_height * grid_height));
}
draw_set_color(c_black);
draw_rectangle(x, y, x + (grid_width * space_width), y + (grid_height * space_height) + sprite_get_height(board_edge_sprite), 2);
draw_set_color(c_white);