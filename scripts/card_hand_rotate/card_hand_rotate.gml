/// @param card_inst*

if (argument_count == 1)
	var _card = argument[0];
else
	var _card = id;
	
// Constants
var _y_offset = 5;
var _rot_factor = 10;

var _opposite = _card.player.hand_x - _card.x;
if (abs(_opposite) > 25) {
	
	var dist = abs(_card.player.hand_x - _card.x) / (_card.sprite_width * sign(_card.image_xscale));
	_card.y = _card.player.hand_y + (dist * _y_offset);

	var adjacent = abs(_card.player.hand_y - _card.y);
	_card.image_angle = arctan(_opposite / adjacent) * _rot_factor * dist;
}
else {
	_card.image_angle = 0;
	_card.y = player.hand_y + _y_offset;
}