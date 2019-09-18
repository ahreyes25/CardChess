if (state == player_state_place_unit)
	script_execute(state, unit_on_mouse);
else
	script_execute(state);

if (keyboard_check_pressed(ord("P")))
	if (can_draw && hand_size < hand_limit && deck_size > 0)
		deck_draw_card();