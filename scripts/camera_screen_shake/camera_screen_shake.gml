/// @param size*
/// @param duration*

#region Exit Conditions
if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.camera == undefined) return;
if (!instance_exists(obj_game_controller.camera)) return;
#endregion

#region Arguments
if (argument_count >= 1)
	var _screen_shake_size = argument[0];
else
	var _screen_shake_size = 1;
	
if (argument_count == 2)
	var _screen_shake_time = argument[1];
else
	var _screen_shake_time = 10;
#endregion

obj_game_controller.camera.shake_size	= _screen_shake_size * global.screen_shake_mult;
obj_game_controller.camera.shake_screen	= true;
obj_game_controller.camera.alarm[0]		= _screen_shake_time;