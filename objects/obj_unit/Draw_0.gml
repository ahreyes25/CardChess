draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);

draw_set_color(c_black);
draw_text(x, y, "u: " + string(board_u) + ", v: " + string(board_v));
draw_set_color(c_white);