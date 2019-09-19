if (room == rm_game) {
	
	if (!instance_exists(obj_debug_controller))
		debug = instance_create_layer(0, 0, "Controllers", obj_debug_controller);
	
	if (!instance_exists(obj_camera))
		camera = instance_create_layer(room_width / 2, room_height / 2, "Controllers", obj_camera);
	
	if (!instance_exists(obj_turn_controller))
		turn_controller	= instance_create_layer(0, 0, "Controllers", obj_turn_controller);
		
	if (!instance_exists(obj_network_controller))
		network_controller = instance_create_layer(0, 0, "Controllers", obj_network_controller);

	if (!instance_exists(obj_board))
		board = instance_create_layer(0, 0, "Board", obj_board);
	
	if (!instance_exists(obj_cursor))
		cursor = instance_create_layer(mouse_x, mouse_y, "Controllers", obj_cursor);
	
	// Create Remote Player
	if (!instance_exists(obj_player_local)) {
		player_local		= instance_create_layer(room_width / 2, (room_height / 2) + (obj_game_controller.camera.height_current / 2), "Controllers", obj_player_local);
		player_local.team	= TEAM.WHITE;
		player_local.board	= board;
	}
}