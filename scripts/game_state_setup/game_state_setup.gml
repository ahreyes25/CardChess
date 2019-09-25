if (instance_exists(obj_player_local) && instance_exists(obj_player_remote)) {
	// Once Decks Setup, Start Drawing Crads
	if (obj_player_remote.deck_loaded)
		obj_player_local.state  = player_state_setup;
	
	// Once Hand Has Been Drawn For Both Players, Progress Game State and Player States
	if (obj_player_local.hand_size == global.starting_hand_size && obj_player_remote.hand_size == global.starting_hand_size) {	
		obj_player_local.state			= player_state_place_unit;
		obj_player_local.unit_on_mouse	= UNIT.KING;
		state							= game_state_idle;
	}
}