/// @param u
/// @param v

var _u	= argument0;
var _v	= argument1;

buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, DATA.UNIT_DESTROY);
buffer_write(global.buffer, buffer_u8, _u);
buffer_write(global.buffer, buffer_u8, _v);
network_send_packet(obj_player_remote.sockets[| 0], global.buffer, buffer_tell(global.buffer));