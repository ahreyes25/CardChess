/// @param unit_instance
/// @param team_enum

var _unit = argument0;
var _team = argument1;

if (!instance_exists(obj_turn_controller)) return;

if (_team == TEAM.WHITE)
	ds_list_add(obj_turn_controller.team_white, _unit);
else if (_team == TEAM.BLUE)
	ds_list_add(obj_turn_controller.team_blue, _unit);