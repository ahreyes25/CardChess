if (unit_on_mouse != undefined && team != undefined) {
	var _sprite = global.unit_data[unit_on_mouse, UP.SPRITE];
	draw_sprite(_sprite, team, mouse_x, mouse_y);
}

draw_sprite(spr_card_icon, 0, x + 150, y - 15);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text_transformed(x + 150, y - 15, deck_size, 0.5, 0.5, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);