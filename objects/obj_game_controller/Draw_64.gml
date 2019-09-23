draw_set_color(c_black);

if (instance_exists(obj_turn_controller)) {
	draw_text(10, 25, "Turn Count: " + string(floor(obj_turn_controller.turn_count)));	
	//draw_text(10, 40, "Team Current: " + string(team_get_current()));	
}

//if (state != undefined)
//	draw_text(10, 55, "Game: " + string(script_get_name(state)));
	
//if (instance_exists(obj_player_local) && obj_player_local.state != undefined)
//	draw_text(10, 70, "PlayerL: " + string(script_get_name(obj_player_local.state)));
	
//if (instance_exists(obj_player_local) && obj_player_local.unit_touching != undefined)
//	draw_text(10, 85, "Touching: " + string(obj_player_local.unit_touching));
	
//if (instance_exists(obj_player_local) && obj_player_local.unit_selected != undefined)
//	draw_text(10, 100, "Selected: " + string(obj_player_local.unit_selected));

//if (instance_exists(obj_board)) {
//	for (var i = 0; i < obj_board.grid_width; i++) {
//		for (var j = 0; j < obj_board.grid_height; j++) {
//			draw_text(10 + (i * 15), 150 + (j * 15), obj_board.grid[# i, j]);
//		}	
//	}
//}

//if (instance_exists(obj_player_local)) {
//	for (var i = 0; i < ds_list_size(obj_player_local.units); i++) {
//		draw_text(10, 150 + (i * 15), obj_player_local.units[| i]);	
//	}
//}

draw_set_color(c_white);