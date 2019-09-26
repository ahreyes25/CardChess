/// @param x
/// @param y
/// @param damage
/// @param delay*

var _x		= argument[0];
var _y		= argument[1];
var _damage = argument[2];

if (argument_count == 4)
	var _delay = argument[3];
else
	var _delay = undefined;

var _explosion		= instance_create_layer(_x, _y, "Effects", obj_explosion);
_explosion.damage	= _damage;

if (_delay != undefined) {
	_explosion.delay		= _delay;
	_explosion.image_speed	= 0;
	_explosion.visible		= false;
}
else 
	camera_screen_shake(_explosion.screen_shake);