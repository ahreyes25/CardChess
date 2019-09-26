/// @param card_id
/// @param player*

#region Arguments
if (argument_count == 1) {
	var _card_id	= argument[0];
	var _player		= id;	
}
else if (argument_count == 2) {
	var _card_id	= argument[0];
	var _player		= argument[1];		
}
#endregion

// Add Actions to Queue
var _actions = global.card_data[_card_id, CP.ACTIONS];

for (var i = 0; i < array_length_1d(_actions); i++)
	ds_queue_enqueue(_player.actions, _actions[i]);	

player_action_next(_player);