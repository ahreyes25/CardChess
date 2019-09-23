draw_self();

draw_set_valign(fa_center);
draw_set_halign(fa_center);

if (obj_turn_controller.team_current == obj_player_local.team) {
	draw_set_color(c_black);
	draw_text_transformed(x, y - 3, "End", 0.5, 0.5, 0);
	draw_text_transformed(x, y + 3, "Turn", 0.5, 0.5, 0);
}
else {
	draw_set_color(c_white);
	draw_text_transformed(x, y - 3, "Enemy", 0.5, 0.5, 0);
	draw_text_transformed(x, y + 3, "Turn", 0.5, 0.5, 0);
}
	
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);