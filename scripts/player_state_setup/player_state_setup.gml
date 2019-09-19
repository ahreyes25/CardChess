// Draw Cards
repeat(deck_size)
	ds_list_add(deck, CARD.SPAWN_PAWN_DRAW_1);
repeat(global.starting_hand_size)
	draw_card();
	
state = undefined;