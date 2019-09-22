#region Draw Board
var _counter = 0;

for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		draw_sprite(board_sprite, (i + j) mod 2, x + (i * space_width), y + (j * space_height));	
		_counter++;
	}

	if (grid_height mod 2 == 0)
		draw_sprite(board_edge_sprite, (i mod 2 == 0), x + (i * space_width), y + (space_height * grid_height));
	else
		draw_sprite(board_edge_sprite, (i mod 2 == 1), x + (i * space_width), y + (space_height * grid_height));
}
draw_set_color(c_black);
draw_rectangle(x, y, x + (grid_width * space_width), y + (grid_height * space_height) + sprite_get_height(board_edge_sprite), 2);
draw_set_color(c_white);
#endregion

#region Draw Spawn Zones
if (obj_game_controller.player_local.unit_on_mouse != undefined) {
	if (team_get_current() == TEAM.WHITE || obj_game_controller.player_local.unit_on_mouse == UNIT.KING) {
	
		for (var i = 0; i < grid_width; i++) {
			for (var j = grid_height - 1; j >= 0; j--) {
				if (j >= grid_height - obj_game_controller.player_local.spawn_size && grid[# i, j] == 0)
					draw_sprite_ext(spr_valid, 0, x + (i * space_width), y + (j * space_height), 1, 1, 0, c_white, 0.5);
				else
					draw_sprite_ext(spr_invalid, 0, x + (i * space_width), y + (j * space_height), 1, 1, 0, c_white, 0.5);
			}
		}
	}
}
#endregion

#region Draw Selected Unit Movement
if (obj_game_controller.player_local.unit_selected != undefined && obj_game_controller.player_local.unit_selected.show_move) {
	
	with (obj_game_controller.player_local.unit_selected) {
		for (var i = 0; i < array_length_1d(move_config); i++) {
			var _move_points = move_config[i];
			var _u = _move_points[_.X];
			var _v = _move_points[_.Y];
		
			if (in_bounds(board.grid, board_u + _u, board_v + _v)) {
				var _world_coords = board_to_world(board_u + _u, board_v + _v, false);
				var _x = _world_coords[_.X];
				var _y = _world_coords[_.Y];
				draw_sprite_ext(spr_valid, 0, _x, _y, 1, 1, 0, c_white, 0.75);
			}	
		}
	}
}
#endregion

#region Draw Selected Unit Attack
if (obj_game_controller.player_local.unit_selected != undefined && obj_game_controller.player_local.unit_selected.show_attack) {
	
	with (obj_game_controller.player_local.unit_selected) {
		for (var i = 0; i < array_length_1d(attack_config); i++) {
			var _attack_points = attack_config[i];
			var _u = _attack_points[_.X];
			var _v = _attack_points[_.Y];
		
			if (in_bounds(board.grid, board_u + _u, board_v + _v)) {
				var _world_coords = board_to_world(board_u + _u, board_v + _v, false);
				var _x = _world_coords[_.X];
				var _y = _world_coords[_.Y];
				draw_sprite_ext(spr_invalid, 0, _x, _y, 1, 1, 0, c_white, 0.75);
			}	
		}
	}
}
#endregion