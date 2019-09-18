enum CARD {
	SPAWN_PAWN_DRAW_1
}

enum CP {
	NAME, SPRITE, ACTIONS	
}

// Spawn Pawn Draw 1
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.NAME]		= "Pawn Spawn Draw 1";
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.SPRITE]		= spr_card_pawn1_card1;
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.ACTIONS]	= [draw_card, [spawn_unit, UNIT.PAWN]];