/// @param buffer
var _buffer = argument0;

buffer_seek(_buffer, buffer_seek_start, 0);
		
switch (buffer_read(_buffer, buffer_u8)) {
	
	// Set Starting Team
	case DATA.TEAMS_STARTING:
		network_teams_set_read(_buffer);
		break;
	
	// Players Connected
	case DATA.CONNECT:
		network_players_connected_read();
		break;
	
	// Set Starting Board Size
	case DATA.BOARD_SIZE:
		network_board_set_size_read(_buffer);
		break;
	
	// Create Unit
	case DATA.UNIT_CREATE:
		network_unit_create_read(_buffer);
		break;
	
	// Move Unit
	case DATA.UNIT_MOVE:
		network_unit_update_position_read(_buffer);
		break;
	
	// Destroy Unit
	case DATA.UNIT_DESTROY:
		network_unit_destroy_read(_buffer);
		break;
	
	// End Turn
	case DATA.TURN_END:
		network_turn_end_read();
		break;
	
	// Update Remote Deck
	case DATA.DECK_UPDATE:
		network_deck_update_read(_buffer);
		break;
		
	// Draw Card
	case DATA.DRAW:
		network_card_draw_read();
		break;
}