/// @param size*
/// @param duration*

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

obj_camera.shake_size	= _screen_shake_size * global.screen_shake_mult;
obj_camera.shake_screen	= true;
obj_camera.alarm[0]		= _screen_shake_time;