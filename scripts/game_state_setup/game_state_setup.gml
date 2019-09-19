// TO DO : Repeat All For Player2

// Players Loaded & Created 
if (player_local != undefined) {	
	
	// Set Player to Start
	player_local.state = player_state_setup;
	
	// Player Hand Drawn and Ready To Start
	if (player_local.hand_size == global.starting_hand_size) {
		
		player_local.state			= player_state_place_unit;
		player_local.unit_on_mouse	= UNIT.KING;
		state						= game_state_idle;
	}
}