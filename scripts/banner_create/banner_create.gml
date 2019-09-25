/// @param text
/// @param time*

if (argument_count == 2) {
	var _text = argument[0];	
	var _time = argument[1];
}
else {
	var _text = argument[0];	
	var _time = undefined;
}

var _banner				= instance_create_layer(room_width / 2, room_height, "Controllers", obj_banner);
_banner.move_to_middle	= true;
_banner.text			= _text;

if (_time != undefined)
	_banner.time		= _time;

return _banner;