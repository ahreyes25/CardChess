/// @param card_inst*
/// @param min_scale_factor*
/// @param max_scale_factor*

#region Arguments
if (argument_count == 3) {
	var _card		= argument[0];
	var _min_scale	= argument[1];
	var _max_scale	= argument[2];
}
else if (argument_count == 2) {
	var _card		= id;
	var _min_scale	= argument[0];
	var _max_scale	= argument[1];
}
else if (argument_count == 1) {
	var _card		= argument[0];
	var _min_scale	= 0.75;
	var _max_scale	= 1;
}
else {
	var _card		= id;
	var _min_scale	= 0.75;
	var _max_scale	= 1;
}
#endregion

if (!instance_exists(_card)) return;

var _new_scale		= 1 - ((_card.player.hand_size - 1) / _card.player.hand_limit) + 0.1;
_card.image_xscale	= clamp(_new_scale, _min_scale, _max_scale);
_card.image_yscale	= clamp(_new_scale, _min_scale, _max_scale);