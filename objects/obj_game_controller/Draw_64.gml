draw_set_color(c_black);

if (instance_exists(obj_turn_controller)) {
	draw_text(10, 25, "Turn Count: " + string(obj_turn_controller.turn_count));	
	draw_text(10, 40, "Team Current: " + string(team_get_current()));	
}

if (state != undefined)
	draw_text(10, 55, "Game: " + string(script_get_name(state)));
	
if (instance_exists(obj_player_local) && obj_player_local.state != undefined)
	draw_text(10, 70, "PlayerL: " + string(script_get_name(obj_player_local.state)));
	
if (instance_exists(obj_player_local) && obj_player_local.unit_touching != undefined)
	draw_text(10, 85, "Unit: " + string(obj_player_local.unit_touching));

draw_set_color(c_white);