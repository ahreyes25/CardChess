// General
data	= ds_map_create();
pid		= undefined;
team	= undefined;
board	= undefined;
state	= player_state_place_unit;
units	= ds_map_create();
discard	= ds_list_create();			// holds card ids

// Hand
hand		= ds_list_create();		// holds card instance ids
hand_x		= x;
hand_y		= y - 30;
hand_limit	= 5;
hand_size	= 0;

// Deck
deck		= ds_list_create();		// holds card ids
deck[| 0]	= CARD.SPAWN_PAWN_DRAW_1;
deck[| 1]	= CARD.SPAWN_PAWN_DRAW_1;
deck[| 2]	= CARD.SPAWN_PAWN_DRAW_1;
deck_limit	= 30;
deck_size	= 3;

// Other
can_draw		= false;
can_move		= false;
unit_on_mouse	= UNIT.KING;
card_on_mouse	= undefined;

// Action Q
actions			= ds_queue_create();
execute_action	= false; 