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

hand_limit		= global.starting_hand_limit;
hand_size		= 0;
deck_size		= global.deck_limit;
execute_action	= false; 
spawn_size		= global.default_spawn_size;

units_can_move	= 1;
units_moved		= 0;
cards_can_play	= 1;
cards_played	= 0;

// Non-Serialized Data
has_king		= false;
deck_limit		= global.deck_limit;
deck_x			= x;
deck_y			= y;
hand_x			= x;
hand_y			= y;