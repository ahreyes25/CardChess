// Draw Board
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

// Draw Spawn Zones
if (instance_exists(obj_turn_controller) && obj_turn_controller.current_team_turn == obj_turn_controller.team_white) {
	if (instance_exists(obj_game_controller) && obj_game_controller.player1.unit_on_mouse != undefined) {
	
		for (var i = 0; i < grid_width; i++) {
			for (var j = grid_height - 1; j >= 0; j--) {
				if (j >= grid_height - spawn_size && grid[# i, j] == 0)
					draw_sprite_ext(spr_valid, 0, x + (i * space_width), y + (j * space_height), 1, 1, 0, c_white, 0.5);
				else
					draw_sprite_ext(spr_invalid, 0, x + (i * space_width), y + (j * space_height), 1, 1, 0, c_white, 0.5);
			}
		}
	}
}