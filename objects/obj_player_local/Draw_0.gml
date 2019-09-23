event_inherited();

// Draw Unit On Mouse
if (unit_on_mouse != undefined && team != undefined) {
	var _sprite = global.unit_data[unit_on_mouse, UP.SPRITE];
	draw_sprite(_sprite, team, mouse_x, mouse_y);
}

// Draw Card Info
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_black);
if (info_string != undefined)
	draw_text_transformed(info_x, info_y, info_string, 0.5, 0.5, 0);

// Reset Draw Properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
