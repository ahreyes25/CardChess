x = mouse_x;
y = mouse_y;
image_xscale = 1;
image_yscale = 1;

// Play Card
if (!mouse_check_button(mb_left)) {
	// Let Go Of Card In Play Zone
	if (y < player.hand_y - sprite_height) {
		
		ds_list_delete(player.hand, ds_list_find_index(player.hand, id));
		ds_list_add(player.discard, card_id);
		
		player.hand_size--;
		player.card_on_mouse = undefined;
		
		card_activate(card_id, player);
		instance_destroy();
		network_hand_update_write();
	}
	// Let Go Of Card In Card Zone
	else
		state = card_state_return_to_hand;
}