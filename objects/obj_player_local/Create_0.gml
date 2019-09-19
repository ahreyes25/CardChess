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
hand_y		= y - 50;
hand_limit	= 7;
hand_size	= 0;

// Deck
deck		= ds_list_create();		// holds card ids
deck_limit	= 30;
deck_size	= 30;
deck_x		= x + 150;
deck_y		= y - 15;

// Board
board_units	= ds_list_create();		// holds unit ids

// Other
can_draw		= false;
can_move		= false;
unit_on_mouse	= undefined;
card_on_mouse	= undefined;
info_x			= x - 155;
info_y			= y - 10;
info_string		= undefined;

// Action Q
actions			= ds_queue_create();
execute_action	= false; 