/// @param id*

if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
	
if (!instance_exists(_obj)) return;

var _scaled_width	= sprite_get_width(_obj.sprite_index)  * _obj.image_xscale;
var _scaled_height	= sprite_get_height(_obj.sprite_index) * _obj.image_yscale;
var _padding		= 0;

return (
	mouse_x >  _obj.x - _scaled_width  / 2 + _padding &&
	mouse_x <= _obj.x + _scaled_width  / 2 - _padding && 
	mouse_y >= _obj.y - _scaled_height / 2 + _padding && 
	mouse_y <= _obj.y + _scaled_height / 2 - _padding
);

/*
return (position_meeting(mouse_x, mouse_y, _obj));

/*
return (
	mouse_x >= _obj.x - ((sprite_get_width(_obj.sprite_index) * _obj.image_xscale) / 2) &&
	mouse_x <= _obj.x + ((sprite_get_width(_obj.sprite_index) * _obj.image_xscale) / 2) &&
	mouse_y >= _obj.y - ((sprite_get_height(_obj.sprite_index) * _obj.image_yscale) / 2) &&
	mouse_y <= _obj.y + ((sprite_get_height(_obj.sprite_index) * _obj.image_yscale) / 2)
);

/*
return (
	mouse_x >= (_obj.x - (_obj.sprite_xoffset * _obj.image_xscale)) && 
	mouse_x <= (_obj.x - (_obj.sprite_xoffset * _obj.image_xscale) + (_obj.sprite_width * _obj.image_xscale)) &&
	mouse_y >= (_obj.y - (_obj.sprite_yoffset * _obj.image_yscale)) && 
	mouse_y <= (_obj.y - (_obj.sprite_yoffset * _obj.image_yscale) + (_obj.sprite_height * _obj.image_yscale))
);