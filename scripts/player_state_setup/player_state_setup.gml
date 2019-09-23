// Add Cards to Deck
repeat (deck_size)
	ds_list_add(deck, irandom(global.number_of_cards - 1));

// Draw Cards
if (alarm[0] == -1) {
	if (hand_size < global.starting_hand_size)
		draw_card();
		
	alarm[0] = 30;
}
	
state = undefined;