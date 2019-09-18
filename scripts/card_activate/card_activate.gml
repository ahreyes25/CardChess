/// @param card_id
/// @param player*

if (argument_count == 1) {
	var _card_id	= argument[0];
	var _player		= id;	
}
else if (argument_count == 2) {
	var _card_id	= argument[0];
	var _player		= argument[1];		
}

if (!instance_exists(_player)) return;

_player.actions	= global.card_data[_card_id, CP.ACTIONS];
player_start_actions(_player);