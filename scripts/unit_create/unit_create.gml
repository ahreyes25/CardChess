/// @param unit
/// @param team
/// @param x
/// @param y
/// @param board_inst
/// @param add_to_team?

var _unit	= argument0;
var _team	= argument1;
var _x		= argument2;
var _y		= argument3;
var _board	= argument4;
var _add	= argument5;

var _unit_instance			= instance_create_layer(_x, _y, "Units", obj_unit);
_unit_instance.unit			= _unit;
_unit_instance.team			= _team;
_unit_instance.attack		= global.unit_data[_unit, UP.ATTACK];
_unit_instance.life			= global.unit_data[_unit, UP.LIFE];
_unit_instance.sprite_index	= global.unit_data[_unit, UP.SPRITE];
_unit_instance.image_index	= _team;
_unit_instance.image_speed	= 0;
_unit_instance.state		= unit_state_idle;
_unit_instance.board		= _board;

// Set Movement Direction
if (_team == TEAM.WHITE)
	_unit_instance.dir_moving = DIR.UP;
else if (_team == TEAM.BLUE)
	_unit_instance.dir_moving = DIR.DOWN;

// Add To Team List
if (_add)
	unit_add_team(_unit_instance, _team);

// Store Data In Grid
var _board_coords = world_to_board(_x, _y, _board);
board_space_set_data(_board, _board_coords[_.X], _board_coords[_.Y], _unit_instance);

return _unit_instance;