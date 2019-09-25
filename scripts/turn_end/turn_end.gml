team_next();
turn_count_add(0.5);

// Set Player States
if (obj_player_local.team != team_get_current())
	obj_player_local.state = player_state_wait;	
else {
	obj_player_local.state = player_state_idle;
	draw_card(obj_player_local);
}