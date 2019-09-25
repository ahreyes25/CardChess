/// @param flash_alpha*
/// @param flash_color*
/// @param flash_decay*

#region Arguments
if (argument_count >= 1)
	var _alpha = argument[0];
else
	var _alpha = 0.25;
	
if (argument_count >= 2)
	var _color = argument[1];
else
	var _color = c_white;
	
if (argument_count == 3)
	var _decay = argument[2];
else
	var _decay = 0.1;
#endregion

obj_camera.flash_alpha = _alpha * global.screen_flash_mult;
obj_camera.flash_color = _color;
obj_camera.flash_decay = _decay;