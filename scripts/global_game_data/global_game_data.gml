#region Enums
enum _ {
	X, Y	
}

enum DIR {
	LEFT, RIGHT, UP, DOWN	
}

enum PLAYER {
	P1, P2	
}

enum TEAM {
	WHITE, BLUE	
}
#endregion

// Settings
global.screen_flash_mult	= 1.0;
global.screen_shake_mult	= 1.0;
global.save_objects			= [obj_game_controller, obj_turn_controller, obj_board, obj_player_local, obj_unit];

// Game Properties
global.starting_hand_size	= 3;
global.deck_limit			= 30;