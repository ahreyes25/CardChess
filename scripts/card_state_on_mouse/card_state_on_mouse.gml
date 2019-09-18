x = mouse_x;
y = mouse_y;
image_xscale = 1;
image_yscale = 1;

if (!mouse_check_button(mb_left)) {
	// Play Card
	if (y < player.hand_y - sprite_height) {
		
		ds_list_delete(player.hand, ds_list_find_index(player.hand, id));
		ds_list_add(player.discard, card_id);
		
		player.hand_size--;
		player.card_on_mouse = undefined;
		
		card_activate(card_id, player);
		instance_destroy();
	}
	// Return Card To Hand
	else {
		state = card_state_return_to_hand;
	}
}