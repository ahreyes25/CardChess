var _buffer = argument0;

var _board_w = buffer_read(_buffer, buffer_u8);
var _board_h = buffer_read(_buffer, buffer_u8);
board.grid_width	= _board_w;
board.grid_height	= _board_h;
ds_grid_destroy(board.grid);
board.grid = ds_grid_create(_board_w, _board_h);
board.x = (room_width  / 2) - (board.grid_width  * board.space_width)  / 2;
board.y = (room_height / 2) - (board.grid_height * board.space_height) / 2;