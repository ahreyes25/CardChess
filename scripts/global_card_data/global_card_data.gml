enum CARD {
	PAWN, KNIGHT, ROOK, BISHOP, QUEEN, KING,
}

enum CP {
	NAME, SPRITE, ACTIONS, INFO, COST
}

// Queen
global.card_data[CARD.QUEEN, CP.NAME]		= "";
global.card_data[CARD.QUEEN, CP.SPRITE]		= spr_card_queen;
global.card_data[CARD.QUEEN, CP.ACTIONS]	= [select_any_unit, [bombard_unit, 1]];
global.card_data[CARD.QUEEN, CP.INFO]		= "";
global.card_data[CARD.QUEEN, CP.COST]		= 3;

// Bishop
global.card_data[CARD.BISHOP, CP.NAME]		= "";
global.card_data[CARD.BISHOP, CP.SPRITE]	= spr_card_bishop;
global.card_data[CARD.BISHOP, CP.ACTIONS]	= [[spawn_unit, UNIT.BISHOP], draw_card];
global.card_data[CARD.BISHOP, CP.INFO]		= "";

// Rook
global.card_data[CARD.ROOK, CP.NAME]		= "";
global.card_data[CARD.ROOK, CP.SPRITE]		= spr_card_rook;
global.card_data[CARD.ROOK, CP.ACTIONS]		= [[spawn_unit, UNIT.ROOK], draw_card];
global.card_data[CARD.ROOK, CP.INFO]		= "";

// Knight
global.card_data[CARD.KNIGHT, CP.NAME]		= "";
global.card_data[CARD.KNIGHT, CP.SPRITE]	= spr_card_knight;
global.card_data[CARD.KNIGHT, CP.ACTIONS]	= [[spawn_unit, UNIT.KNIGHT], [spawn_unit, UNIT.KNIGHT], [spawn_unit, UNIT.KNIGHT]];
global.card_data[CARD.KNIGHT, CP.INFO]		= "";

// Pawn
global.card_data[CARD.PAWN, CP.NAME]		= "";
global.card_data[CARD.PAWN, CP.SPRITE]		= spr_card_pawn;
global.card_data[CARD.PAWN, CP.ACTIONS]		= [[spawn_unit, UNIT.PAWN], draw_card];
global.card_data[CARD.PAWN, CP.INFO]		= "Spawn 1 Pawn Unit. Draw 1 Card.";