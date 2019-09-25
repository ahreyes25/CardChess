event_inherited();

info_x			= x - 155;
info_y			= y - 10;
info_string		= undefined;
unit_on_mouse	= undefined;	// snapped to mouse	
card_on_mouse	= undefined;	// snapped to mouse
unit_touching	= undefined;	// mouse touching unit on board
unit_selected	= undefined;	// unit clicked on and selected

alert_unit_actions	= false;
alert_card_actions	= false;
draw_unit_alert		= true;
draw_card_alert		= true;

deck_x			= x + 150;
deck_y			= y - 15;
hand_x			= x;
hand_y			= y - 40;

// Give Random Deck
repeat (deck_size)
	ds_list_add(deck, irandom(global.number_of_cards - 1));