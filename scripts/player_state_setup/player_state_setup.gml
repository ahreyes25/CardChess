// Draw Cards
repeat (deck_size)
	ds_list_add(deck, CARD.SPAWN_PAWN_DRAW_1);

if (alarm[0] == -1) {
	if (hand_size < global.starting_hand_size)
		draw_card();
		
	alarm[0] = 30;
}
	
state = undefined;