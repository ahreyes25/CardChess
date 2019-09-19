// TO DO : Repeat All For Player2

// Players Loaded & Created 
if (player1 != undefined) {	
	
	// Set Player to Start
	player1.state = player_state_setup;
	
	// Player Hand Drawn and Ready To Start
	if (player1.hand_size == global.starting_hand_size) {
		player1.state = player_state_place_unit;
		player1.unit_on_mouse = UNIT.KING;
		
		state = game_state_idle;
	}
}