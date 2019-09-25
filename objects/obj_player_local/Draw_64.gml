draw_set_color(c_black);

// Alert Unit Actions
if (!draw_unit_alert)
	draw_text(10, 20, "Unit Actions: ");
else
	draw_text(10, 20, "Unit Actions: " + string(units_moved) + "/" + string(units_can_move));

// Alert Unit Actions
if (!draw_card_alert)
	draw_text(10, 40, "Card Actions: ");
else
	draw_text(10, 40, "Card Actions: " + string(cards_played) + "/" + string(cards_can_play));

draw_set_color(c_white);