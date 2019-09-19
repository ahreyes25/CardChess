if (!instance_exists(obj_game_controller)) return;
if (obj_game_controller.turn_controller == undefined) return;
if (!instance_exists(obj_game_controller.turn_controller)) return;

obj_game_controller.turn_controller.team_index++;

if (obj_game_controller.turn_controller.team_index > array_length_1d(global.teams) - 1)
	obj_game_controller.turn_controller.team_index = 0;

obj_game_controller.turn_controller.team_current = global.teams[obj_game_controller.turn_controller.team_index];