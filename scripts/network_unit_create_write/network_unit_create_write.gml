/// @param unit_type
/// @param u
/// @param v

var _unit_type	= argument0;
var _u			= argument1;
var _v			= argument2;

buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, DATA.UNIT_CREATE);
buffer_write(global.buffer, buffer_u8, _unit_type);
buffer_write(global.buffer, buffer_u8, _u);
buffer_write(global.buffer, buffer_u8, _v);

if (obj_player_remote.is_host)
	network_send_packet(obj_player_remote.sockets[| 0], global.buffer, buffer_tell(global.buffer));
else
	network_send_packet(obj_player_remote.socket, global.buffer, buffer_tell(global.buffer));