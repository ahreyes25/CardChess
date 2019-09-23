/// @param buffer

var _buffer = argument0;

var _u		= buffer_read(_buffer, buffer_u8);
var _v		= buffer_read(_buffer, buffer_u8);
var _v_f	= abs((board.grid_height - 1) - _v);
var _unit	= board_space_get_unit(board, _u, _v_f);

if (instance_exists(obj_player_local) && ds_exists(obj_player_local.units, ds_type_list))
	ds_list_delete(obj_player_local.units, ds_list_find_index(obj_player_local.units, _unit));

if (_unit.unit_type == UNIT.KING)
	_unit.player.has_king = false;

instance_destroy(_unit);