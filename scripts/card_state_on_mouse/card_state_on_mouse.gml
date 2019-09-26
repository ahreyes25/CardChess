x = mouse_x;
y = mouse_y;
image_xscale = 1;
image_yscale = 1;

// Play Card
if (!mouse_check_button(mb_left)) {
	// Let Go Of Card In Play Zone
	if (y < player.hand_y - sprite_height)
		state = card_state_activate;
		
	// Let Go Of Card In Card Zone
	else
		state = card_state_return_to_hand;
}