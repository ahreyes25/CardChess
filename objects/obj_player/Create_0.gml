// General
data	= ds_map_create();
pid		= undefined;
team	= undefined;
board	= undefined;
state	= undefined;
units	= ds_map_create();
discard	= ds_list_create();			// holds card ids

// Hand
hand		= ds_list_create();		// holds card instance ids
hand_x		= x;
hand_y		= y - 30;
hand_limit	= 7;
hand_size	= 0;

// Deck
deck		= ds_list_create();		// holds card ids
deck_limit	= 30;
deck_size	= 30;

// Board
board_units	= ds_list_create();		// holds unit ids

// Other
can_draw		= false;
can_move		= false;
unit_on_mouse	= undefined;
card_on_mouse	= undefined;

// Action Q
actions			= ds_queue_create();
execute_action	= false; 