if (team != undefined)
	draw_sprite_ext(sprite_index, team, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);
else
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);

// Show Movement
// --- Drawn in obj_board Draw Event ---
// Show Attack
// --- Drawn in obj_board Draw Event ---

// Show Unit Info
// ...TODO...