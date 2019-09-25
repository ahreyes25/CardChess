enum CARD {
	PAWN, KNIGHT, ROOK, BISHOP, QUEEN, KING
}

enum CP {
	NAME, SPRITE, ACTIONS, INFO
}

// Queen
global.card_data[CARD.QUEEN, CP.NAME]		= "";
global.card_data[CARD.QUEEN, CP.SPRITE]		= spr_card_queen;
global.card_data[CARD.QUEEN, CP.ACTIONS]	= [[spawn_unit, UNIT.QUEEN], draw_card];
global.card_data[CARD.QUEEN, CP.INFO]		= "Spawn 1 Queen Unit. Draw 1 Card.";

// Bishop
global.card_data[CARD.BISHOP, CP.NAME]		= "";
global.card_data[CARD.BISHOP, CP.SPRITE]	= spr_card_bishop;
global.card_data[CARD.BISHOP, CP.ACTIONS]	= [[spawn_unit, UNIT.BISHOP], draw_card];
global.card_data[CARD.BISHOP, CP.INFO]		= "Spawn 1 Bishop Unit. Draw 1 Card.";

// Rook
global.card_data[CARD.ROOK, CP.NAME]		= "";
global.card_data[CARD.ROOK, CP.SPRITE]		= spr_card_rook;
global.card_data[CARD.ROOK, CP.ACTIONS]		= [[spawn_unit, UNIT.ROOK], draw_card];
global.card_data[CARD.ROOK, CP.INFO]		= "Spawn 1 Rook Unit. Draw 1 Card.";

// Knight
global.card_data[CARD.KNIGHT, CP.NAME]		= "";
global.card_data[CARD.KNIGHT, CP.SPRITE]	= spr_card_knight;
global.card_data[CARD.KNIGHT, CP.ACTIONS]	= [[spawn_unit, UNIT.KNIGHT], [spawn_unit, UNIT.KNIGHT], [spawn_unit, UNIT.KNIGHT]];
global.card_data[CARD.KNIGHT, CP.INFO]		= "Spawn 1 Knight Unit. Draw 1 Card.";

// Pawn
global.card_data[CARD.PAWN, CP.NAME]		= "";
global.card_data[CARD.PAWN, CP.SPRITE]		= spr_card_pawn;
global.card_data[CARD.PAWN, CP.ACTIONS]		= [[spawn_unit, UNIT.PAWN], draw_card];
global.card_data[CARD.PAWN, CP.INFO]		= "Spawn 1 Pawn Unit. Draw 1 Card.";