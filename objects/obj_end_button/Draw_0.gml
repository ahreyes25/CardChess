draw_self();

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);

if (obj_turn_controller.team_current == obj_player_local.team)
	draw_text_transformed(x, y, "End Turn", 0.5, 0.5, 0);
else
	draw_text_transformed(x, y, "Enemy Turn", 0.5, 0.5, 0);
	
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);