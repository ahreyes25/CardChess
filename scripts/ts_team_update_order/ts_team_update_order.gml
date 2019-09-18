/// @description	This script just looks at what our current team is, and the looks at the team before
//					it, and the team after it. These teams all exist in our team manager list simply called
//					"teams". This teams list is dynamic and can change in size at any point.

if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.turn_controller == undefined) return;
if (obj_game_controller.turn_controller == noone) return;
if (!instance_exists(obj_game_controller.turn_controller)) return;

var _turn_controller = obj_game_controller.turn_controller;

if ((_turn_controller.current_team_index + 1) < ds_list_size(_turn_controller.teams)) {
	_turn_controller.next_team_turn	= ds_list_find_value(_turn_controller.teams, _turn_controller.current_team_index + 1);
	
	if (_turn_controller.current_team_index == 0)
		_turn_controller.previous_team_turn = ds_list_find_value(_turn_controller.teams, ds_list_size(_turn_controller.teams) - 1);
	else
		_turn_controller.previous_team_turn = ds_list_find_value(_turn_controller.teams, _turn_controller.current_team_index - 1);	
}
else {
	_turn_controller.next_team_turn		= ds_list_find_value(_turn_controller.teams, 0);
	_turn_controller.previous_team_turn = ds_list_find_value(_turn_controller.teams, ds_list_size(_turn_controller.teams) - 2);
}