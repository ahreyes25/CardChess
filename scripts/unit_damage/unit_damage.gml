/// @param unit
/// @param damage

if (is_string(argument0) && variable_instance_exists(id, argument0))
	var _unit = variable_instance_get(id, argument0);
else
	var _unit = argument0;

var _damage	= argument1;

_unit.life -= _damage;