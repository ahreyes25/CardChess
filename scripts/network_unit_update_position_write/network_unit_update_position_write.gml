/// @param u_old
/// @param v_old
/// @param u_new
/// @param v_new

var _u_old	= argument0;
var _v_old	= argument1;
var _u_new	= argument2;
var _v_new	= argument3;

buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, DATA.UNIT_MOVE);
buffer_write(global.buffer, buffer_u8, _u_old);
buffer_write(global.buffer, buffer_u8, _v_old);
buffer_write(global.buffer, buffer_u8, _u_new);
buffer_write(global.buffer, buffer_u8, _v_new);
network_send_packet(obj_player_remote.sockets[| 0], global.buffer, buffer_tell(global.buffer));