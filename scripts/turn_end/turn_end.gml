if (!initiated(obj_game_controller.turn_controller)) return;

// Set Player States
if (obj_player_local.team == team_get_current())
	obj_player_local.state = player_state_wait;	

team_next();
turn_count_add(1);