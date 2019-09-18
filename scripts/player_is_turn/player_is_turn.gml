/// @param player_inst*

if (argument_count == 1)
	var _player = argument[0];
else
	var _player = id;
	
if (!instance_exists(obj_turn_controller)) return undefined;
if (_player.team == undefined) return false;
	
if (_player.team == TEAM.BLUE)
	return (obj_turn_controller.current_team_turn == obj_turn_controller.team_blue);
else if (_player.team == TEAM.WHITE)
	return (obj_turn_controller.current_team_turn == obj_turn_controller.team_white);