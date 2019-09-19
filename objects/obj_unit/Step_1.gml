depth = -y;

var _board_coords = world_to_board(x, y, board);
board_u = _board_coords[_.X];
board_v = _board_coords[_.Y];
	
if (board_u_previous == undefined)
	board_u_previous = board_u;
if (board_v_previous == undefined)
	board_v_previous = board_v;