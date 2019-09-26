/// @param unit_enum
/// @param team_enum
/// @param x
/// @param y
/// @param board_inst
/// @param player

var _unit	= argument0;
var _team	= argument1;
var _x		= argument2;
var _y		= argument3;
var _board	= argument4;
var _player	= argument5;

var _spawn_x	= _x;
var _spawn_y	= _y;
var _state		= unit_state_idle;

if (_unit == UNIT.KING) {
	_spawn_y	= -abs((board.y + (board.grid_height * board.space_height)) - _y);
	_state		= unit_state_drop;
}

var _unit_instance				= instance_create_layer(_spawn_x, _spawn_y, "Units", obj_unit);
_unit_instance.unit_type		= _unit;
_unit_instance.team				= _team;
_unit_instance.attack			= global.unit_data[_unit, UP.ATTACK];
_unit_instance.life_start		= global.unit_data[_unit, UP.LIFE];
_unit_instance.life				= global.unit_data[_unit, UP.LIFE];
_unit_instance.sprite_index		= global.unit_data[_unit, UP.SPRITE];
_unit_instance.image_index		= _team;
_unit_instance.image_speed		= 0;
_unit_instance.state			= _state;
_unit_instance.board			= _board;
_unit_instance.player			= _player;
_unit_instance.target_x			= _x;
_unit_instance.target_y			= _y;

return _unit_instance;