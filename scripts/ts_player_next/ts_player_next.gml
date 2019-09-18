/// @description	This script iterates onto the next player in line. We have to first check
//					to make sure that we have the next player in line setup, and we do that with
//					our script calls at the top of this script here. Then we move to the next player,
//					set current player to that object, and then update the previous and next in line again.

if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.turn_controller == undefined) return;
if (obj_game_controller.turn_controller == noone) return;
if (!instance_exists(obj_game_controller.turn_controller)) return;

ts_team_update_order();
ts_player_update_order();

var _turn_controller = obj_game_controller.turn_controller;

if (_turn_controller.current_team_player_index < ds_list_size(_turn_controller.current_team_turn) - 1) {
	_turn_controller.current_team_player_index++;
}
else {
	
	_turn_controller.current_team_turn			= _turn_controller.next_team_turn;
	_turn_controller.current_team_player_index	= 0;
	
	
	if (_turn_controller.current_team_index < ds_list_size(_turn_controller.teams) - 1)
		_turn_controller.current_team_index++;
	else
		_turn_controller.current_team_index = 0;
}

_turn_controller.current_player_turn = ds_list_find_value(_turn_controller.current_team_turn, _turn_controller.current_team_player_index);

ts_team_update_order();
ts_player_update_order();