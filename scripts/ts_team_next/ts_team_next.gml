/// @description	This script immediately skips to the next team, skipping past all of the other
//					players in line. It skips to the next team, and sets the current player to the 
//					first player in that list.

if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.turn_controller == undefined) return;
if (obj_game_controller.turn_controller == noone) return;
if (!instance_exists(obj_game_controller.turn_controller)) return;

var _turn_controller = obj_game_controller.turn_controller;

if (_turn_controller.current_team_index < ds_list_size(_turn_controller.teams) - 1)
	_turn_controller.current_team_index++;
else
	_turn_controller.current_team_index = 0;

_turn_controller.current_team_player_index = 0;

_turn_controller.current_team_turn		= ds_list_find_value(_turn_controller.teams, _turn_controller.current_team_index);
_turn_controller.current_player_turn	= ds_list_find_value(_turn_controller.current_team_turn, _turn_controller.current_team_player_index);

ts_team_update_order();
ts_player_update_order();