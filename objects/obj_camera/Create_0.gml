x_to = x;
y_to = y;

width_current	= 320;
height_current	= 240;
target			= undefined;

camera	= camera_create();
viewmat = matrix_build_lookat(x, y, -100, x, y, 0, 0, 1, 0);
projmat = matrix_build_projection_ortho(width_current, height_current, 1.0, 32000.0);
camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);
view_camera[0] = camera;

// Screen Shake 
shake_size		= 0;
shake_screen	= false;

// Screen Flash
flash_alpha		= 0;
flash_color		= c_white;
flash_decay		= 0;