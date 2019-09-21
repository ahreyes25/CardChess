global_card_data();
global_unit_data();
global_game_data();

debug				= undefined;
camera				= undefined;
turn_controller		= undefined;
network_controller	= undefined;
board				= undefined;
player_local		= undefined;
player_remote		= undefined;
cursor				= undefined;

room_goto_next();

data = ds_map_create();

state = game_state_setup;