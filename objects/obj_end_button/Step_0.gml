if (obj_turn_controller.team_current == obj_player_local.team) {
	if (mouse_touching())
		image_index = 1;
	else
		image_index = 0;
}
else
	image_index = 2;
	
// Click On Button
if (mouse_touching() && obj_player_local.unit_on_mouse == undefined && obj_player_local.card_on_mouse == undefined) {
	if (mouse_check_button_pressed(mb_left)) {
		turn_end();
		network_turn_end_write();
	}
}