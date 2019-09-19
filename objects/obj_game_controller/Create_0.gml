global_game_data();
global_unit_data();
global_card_data();

debug				= undefined;
camera				= undefined;
turn_controller		= undefined;
network_controller	= undefined;
board				= undefined;
player1				= undefined;
player2				= undefined;
cursor				= undefined;

room_goto_next();

data = ds_map_create();

state = game_state_setup;