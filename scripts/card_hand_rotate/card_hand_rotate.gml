/// @param card_inst*

#region Arguments
if (argument_count == 1)
	var _card = argument[0];
else
	var _card = id;
#endregion

var _opposite = _card.player.hand_x - _card.x;
if (abs(_opposite) > 25) {
	
	var _dist = abs(_card.player.hand_x - _card.x) / (_card.sprite_width * sign(_card.image_xscale));
	
	// Adjust y Position
	if (y > obj_board.y)
		_card.y = _card.player.hand_y + (8 * _dist);
	else
		_card.y = _card.player.hand_y - _dist;

	// Adjust Angle 
	var adjacent = abs(_card.player.hand_y - _card.y);
	_card.image_angle = (arctan(_opposite / adjacent) * 5 + _dist);
}
else {
	_card.image_angle = 0;
	_card.y = player.hand_y + 5;
}