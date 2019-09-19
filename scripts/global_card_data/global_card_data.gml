enum CARD {
	SPAWN_PAWN_DRAW_1
}

enum CP {
	NAME, SPRITE, ACTIONS, INFO
}

// Spawn Pawn Draw 1
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.NAME]		= "Pawn Spawn Draw 1";
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.SPRITE]		= spr_card_pawn1_card1;
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.ACTIONS]	= [[spawn_unit, UNIT.PAWN], draw_card];
global.card_data[CARD.SPAWN_PAWN_DRAW_1, CP.INFO]		= "Spawn 1 Pawn Unit. Draw 1 Card.";
