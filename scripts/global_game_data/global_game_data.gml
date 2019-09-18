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

global.screen_flash_mult	= 1.0;
global.screen_shake_mult	= 1.0;
global.save_objects			= [obj_game_controller, obj_turn_controller, obj_board, obj_player, obj_unit];