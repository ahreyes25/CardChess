// Move to Target Position
if ((unit_type == UNIT.KING && obj_player_local.has_king && obj_player_remote.has_king) || unit_type != UNIT.KING) {
	if (y < target_y - move_speed)
		y += move_speed;
	else {
		y = target_y;
		state = unit_state_idle;
		camera_screen_shake();
	}
}