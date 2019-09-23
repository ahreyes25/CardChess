#region Enums
enum _ {
	X, Y	
}

enum DIR {
	LEFT, RIGHT, UP, DOWN	
}

enum TEAM {
	WHITE, BLUE	
}

enum DATA {
	TEAM, BOARD_SIZE, UNIT_CREATE, UNIT_MOVE, UNIT_DESTROY, TURN_END
}
#endregion

// Settings
global.screen_flash_mult	= 1.0;
global.screen_shake_mult	= 1.0;
global.save_objects			= [obj_game_controller, obj_turn_controller, obj_board, obj_player_local, obj_unit];

// Game Properties
global.starting_hand_size	= 3;
global.deck_limit			= 30;
global.default_spawn_size	= 2;
global.teams				= [TEAM.WHITE, TEAM.BLUE];
global.number_of_cards		= array_height_2d(global.card_data);