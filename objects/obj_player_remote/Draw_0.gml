// Draw Deck
draw_sprite(spr_card_icon, 0, deck_x, deck_y);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text_transformed(deck_x, deck_y, deck_size, 0.5, 0.5, 0);