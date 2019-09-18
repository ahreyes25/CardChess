/// @description	This script just looks at what our current player is, and the looks at the player before
//					it, and the player after it. These player all exist in our team lists.
//					These team lists are dynamic and can change in size at any point.

if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.turn_controller == undefined) return;
if (obj_game_controller.turn_controller == noone) return;
if (!instance_exists(obj_game_controller.turn_controller)) return;

var _turn_controller = obj_game_controller.turn_controller;

if ((_turn_controller.current_team_player_index + 1) < ds_list_size(_turn_controller.current_team_turn))
	_turn_controller.next_player_turn = ds_list_find_value(_turn_controller.current_team_turn, _turn_controller.current_team_player_index + 1);
else
	_turn_controller.next_player_turn = ds_list_find_value(_turn_controller.next_team_turn, 0);

if ((_turn_controller.current_team_player_index - 1) > 0)
	_turn_controller.previous_player_turn = ds_list_find_value(_turn_controller.current_team_turn, _turn_controller.current_team_player_index - 1);
else
	_turn_controller.previous_player_turn = ds_list_find_value(_turn_controller.previous_team_turn, ds_list_size(_turn_controller.previous_team_turn) - 1);