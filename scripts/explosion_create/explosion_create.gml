/// @param x
/// @param y
/// @param damage
/// @param delay*

#region Arguments
var _x		= argument[0];
var _y		= argument[1];
var _damage = argument[2];

if (argument_count == 4)
	var _delay = argument[3];
else
	var _delay = undefined;
#endregion

var _board_coords	= world_to_board(_x, _y, obj_board);

var _explosion		= instance_create_layer(_x, _y, "Effects", obj_explosion);
_explosion.damage	= _damage;
_explosion.board_u	= _board_coords[_.X];
_explosion.board_v	= _board_coords[_.Y];

if (_delay != undefined) {
	_explosion.delay		= _delay;
	_explosion.image_speed	= 0;
	_explosion.visible		= false;
}
else 
	camera_screen_shake(_explosion.screen_shake);