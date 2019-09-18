// Focus Target
if (target && instance_exists(target)) { 
	x_to = target.x;
	y_to = target.y;
}
else {
	x_to = room_width  / 2;
	y_to = room_height / 2;
}

// Move Camera
x += (x_to - x) * 0.1;
y += (y_to - y) * 0.1;

// Screen Shake
if (shake_screen) {
	x += random_range(-shake_size, shake_size); 
	y += random_range(-shake_size, shake_size);
}

// Screen Flash
if (flash_alpha > 0)
	flash_alpha -= flash_decay;	
else {
	flash_alpha = 0;
	flash_color = c_white;
}

// Update Camera
viewmat = matrix_build_lookat(x, y, -100, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewmat);

projmat = matrix_build_projection_ortho(width_current, height_current, 1.0, 32000.0);
camera_set_proj_mat(camera, projmat);

camera_apply(camera);
view_camera[0] = camera;