team_next();
turn_count_add(0.5);

// Set Player States
if (obj_player_local.team != team_get_current())
	obj_player_local.state = player_state_wait;	
else {
	obj_player_local.state			= player_state_idle;
	obj_player_local.units_moved	= 0;
	obj_player_local.cards_played	= 0;
	draw_card(obj_player_local);
}