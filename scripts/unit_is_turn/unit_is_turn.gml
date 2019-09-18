/// @param unit_inst*

if (argument_count == 1)
	var _unit = argument[0];
else
	var _unit = id;
	
if (!instance_exists(obj_turn_controller)) return undefined;
if (_unit.team == undefined) return false;
	
if (_unit.team == TEAM.BLUE)
	return (obj_turn_controller.current_team_turn == obj_turn_controller.team_blue);
else if (_unit.team == TEAM.WHITE)
	return (obj_turn_controller.current_team_turn == obj_turn_controller.team_white);