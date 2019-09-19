enum UNIT {
	KING, QUEEN, BISHOP, ROOK, KNIGHT, PAWN
}

enum UP {
	SPRITE, LIFE, ATTACK, 
	MOVE_RANGE_LEFT, MOVE_RANGE_RIGHT, MOVE_RANGE_UP, MOVE_RANGE_DOWN, 
	MOVE_RANGE_UP_LEFT, MOVE_RANGE_UP_RIGHT, MOVE_RANGE_DOWN_LEFT, MOVE_RANGE_DOWN_RIGHT,
}

// King
global.unit_data[UNIT.KING, UP.SPRITE]			= spr_king;
global.unit_data[UNIT.KING, UP.LIFE]			= 1;
global.unit_data[UNIT.KING, UP.ATTACK]			= 1;

// Queen
global.unit_data[UNIT.QUEEN, UP.SPRITE]		= spr_queen;
global.unit_data[UNIT.QUEEN, UP.LIFE]		= 1;
global.unit_data[UNIT.QUEEN, UP.ATTACK]		= 1;

// Bishop
global.unit_data[UNIT.BISHOP, UP.SPRITE]	= spr_bishop;
global.unit_data[UNIT.BISHOP, UP.LIFE]		= 1;
global.unit_data[UNIT.BISHOP, UP.ATTACK]	= 1;

// Rook
global.unit_data[UNIT.ROOK, UP.SPRITE]		= spr_rook;
global.unit_data[UNIT.ROOK, UP.LIFE]		= 1;
global.unit_data[UNIT.ROOK, UP.ATTACK]		= 1;

// Knight
global.unit_data[UNIT.KNIGHT, UP.SPRITE]	= spr_knight;
global.unit_data[UNIT.KNIGHT, UP.LIFE]		= 1;
global.unit_data[UNIT.KNIGHT, UP.ATTACK]	= 1;

// Pawn
global.unit_data[UNIT.PAWN, UP.SPRITE]		= spr_pawn;
global.unit_data[UNIT.PAWN, UP.LIFE]		= 1;
global.unit_data[UNIT.PAWN, UP.ATTACK]		= 1;