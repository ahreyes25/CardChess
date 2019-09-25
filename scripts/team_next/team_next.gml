obj_turn_controller.team_index++;

if (obj_turn_controller.team_index > array_length_1d(global.teams) - 1)
	obj_turn_controller.team_index = 0;

obj_turn_controller.team_current = global.teams[obj_turn_controller.team_index];