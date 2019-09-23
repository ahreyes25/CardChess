// Setup Local Player
if (instance_exists(obj_player_local)) {	
	
	obj_player_local.state = player_state_setup;
	
	if (obj_player_local.hand_size == global.starting_hand_size) {
		obj_player_local.state			= player_state_place_unit;
		obj_player_local.unit_on_mouse	= UNIT.KING;
	}
}

// Setup Remote Player Once Connected
if (instance_exists(obj_player_remote) && ((obj_player_remote.is_host && ds_list_size(obj_player_remote.sockets) > 0) || !obj_player_remote.is_host))
	obj_player_remote.state = player_state_setup;

// Once Both Players Are Loaded and Hands Are Drawn
if (instance_exists(obj_player_local) && instance_exists(obj_player_remote))
	if (obj_player_local.hand_size == global.starting_hand_size && obj_player_remote.hand_size == global.starting_hand_size)
		state = game_state_idle;