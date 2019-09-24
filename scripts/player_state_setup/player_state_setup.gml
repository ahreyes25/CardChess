// Draw Cards
if (alarm[0] == -1) {
	
	// If Hand Not Full Yet, Keep Drawing
	if (hand_size < global.starting_hand_size)
		draw_card();
		
	// Hand Is Full, Wait for Game State to Progress
	else
		state = undefined;
		
	alarm[0] = 30;
}