// Zoom On Mouse Touching
if (mouse_touching()) {
	image_xscale = 2;
	image_yscale = 2;
	depth -= 1;
	y = player.hand_y - (sprite_width * sign(image_yscale) * 0.25);
	image_angle = 0;
	player.info_string = global.card_data[card_id, CP.INFO];
}
// Mouse Not Touching
else {
	card_hand_center();
	card_hand_rotate();
	card_hand_scale();	
	image_xscale = 1;
	image_yscale = 1;
	depth = player.depth;
	y = player.hand_y;
}	

// Snap To Mouse
if (
	mouse_touching() && mouse_check_button(mb_left) && 
	player.unit_on_mouse == undefined && player.card_on_mouse == undefined &&
	team_get_current() == player.team
) {
	
		state = card_state_on_mouse;	
		player.card_on_mouse = id;
}