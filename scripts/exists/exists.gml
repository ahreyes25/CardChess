/// @param object_index*

if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;

return (_obj != undefined && instance_exists(_obj));