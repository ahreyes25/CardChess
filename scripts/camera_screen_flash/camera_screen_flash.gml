/// @param flash_alpha*
/// @param flash_color*
/// @param flash_decay*

#region Exit Conditions
if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.camera == undefined) return;
if (!instance_exists(obj_game_controller.camera)) return;
#endregion

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

obj_game_controller.camera.flash_alpha = _alpha * global.screen_flash_mult;
obj_game_controller.camera.flash_color = _color;
obj_game_controller.camera.flash_decay = _decay;