/// @param unit
/// @param damage

if (is_string(argument0) && variable_instance_exists(id, argument0))
	var _unit = variable_instance_get(id, argument0);
else
	var _unit = argument0;

var _damage	= argument1;

var _coords = [[-1, -1], [0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0]];

for (var i = 0; i < array_length_1d(_coords); i++) {
	
	var _coord = _coords[i];
	if (in_bounds(obj_board.grid, _unit.board_u + _coord[_.X], _unit.board_v + _coord[_.Y])) {
		
		var _world_coords = board_to_world(_unit.board_u + _coord[_.X], _unit.board_v + _coord[_.Y], true);
		explosion_create(_world_coords[_.X], _world_coords[_.Y], _damage, irandom(60));
	}
}