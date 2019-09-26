// Select Unit 
if (mouse_check_button_pressed(mb_left)) {
	if (unit_touching != undefined && unit_touching != noone && unit_touching.team == team) {
		unit_selected = unit_touching;
		player_action_next();
	}
}