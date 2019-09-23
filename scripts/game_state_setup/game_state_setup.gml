// Players Loaded & Created 
if (instance_exists(obj_player_local)) {	
	
	// Set Player to Start
	obj_player_local.state = player_state_setup;
	
	// Player Hand Drawn and Ready To Start
	if (obj_player_local.hand_size == global.starting_hand_size) {
	
		obj_player_local.state			= player_state_place_unit;
		obj_player_local.unit_on_mouse	= UNIT.KING;
		state							= game_state_idle;
	}
}

// Players Loaded & Created 
if (instance_exists(obj_player_remote)) {	
	
	// Set Player to Start
	obj_player_remote.state = player_state_setup;
}