ds_list_delete(player.hand, ds_list_find_index(player.hand, id));
ds_list_add(player.discard, card_id);
		
player.hand_size--;
player.card_on_mouse = undefined;
		
card_activate(card_id, player);
instance_destroy();
network_hand_update_write();