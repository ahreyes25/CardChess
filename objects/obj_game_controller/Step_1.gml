if (room == rm_lobby) {
	if (!instance_exists(obj_network_controller))
		network_controller = instance_create_layer(0, 0, "Controllers", obj_network_controller);	
}

if (room == rm_game) {
	
	if (!instance_exists(obj_debug_controller))
		debug = instance_create_layer(0, 0, "Controllers", obj_debug_controller);
	
	if (!instance_exists(obj_camera))
		camera = instance_create_layer(room_width / 2, room_height / 2, "Controllers", obj_camera);
	
	if (!instance_exists(obj_turn_controller))
		turn_controller	= instance_create_layer(0, 0, "Controllers", obj_turn_controller);

	if (!instance_exists(obj_board))
		board = instance_create_layer(0, 0, "Board", obj_board);
	
	if (!instance_exists(obj_cursor))
		cursor = instance_create_layer(mouse_x, mouse_y, "Controllers", obj_cursor);
	
	// Create Local Player
	if (!instance_exists(obj_player_local)) {
		player_local		= instance_create_layer(room_width / 2, (room_height / 2) + (obj_camera.height_current / 2), "Controllers", obj_player_local);
		player_local.board	= board;
	}
	
	// Create Remote Player
	if (!instance_exists(obj_player_remote)) {
		player_remote		= instance_create_layer(room_width / 2, (room_height / 2) - (obj_camera.height_current / 2), "Controllers", obj_player_remote);
		player_remote.board	= board;
	}
	
	// End Turn Button
	if (!instance_exists(obj_end_button))
		instance_create_layer(room_width * 0.72, room_height / 2, "Controllers", obj_end_button);
}