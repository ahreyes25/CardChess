if (alarm[0] > -1 && flash_red)
	shader_set(shdr_red);
else
	shader_reset();

if (team != undefined)
	draw_sprite_ext(sprite_index, team, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);
else
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);
	
shader_reset();