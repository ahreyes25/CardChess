data = ds_map_create();

// Serialized Data
pid				= undefined;
team			= undefined;
board			= undefined;
state			= undefined;

deck			= ds_list_create();		// holds card_id
hand			= ds_list_create();		// holds card instance ids
discard			= ds_list_create();		// holds card_id
units			= ds_list_create();		// holds unit instance ids
actions			= ds_queue_create();	// holds script index

hand_limit		= 7;
hand_size		= 0;
deck_size		= global.deck_limit;
unit_on_mouse	= undefined;
card_on_mouse	= undefined;
execute_action	= false; 

// Non-Serialized Data
hand_x			= x;
hand_y			= y - 50;
deck_limit		= global.deck_limit;
deck_x			= x + 150;
deck_y			= y - 15;
info_x			= x - 155;
info_y			= y - 10;
info_string		= undefined;
