/// @param banner_inst*

if (argument_count == 1)
	var _banner = argument[0];
else
	var _banner = obj_banner;

if (!instance_exists(_banner)) return undefined;

_banner.move_to_top = true;