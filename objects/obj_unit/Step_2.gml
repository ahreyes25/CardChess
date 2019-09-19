// Store Data In Board Grid
if (board != undefined && board_u != undefined && board_v != undefined)
	if (state == unit_state_idle && in_bounds(board.grid, board_u, board_v))
		board_space_set_data(board, board_u, board_v, id);

// Save Data
data[? "unit_type"]		= unit_type;
data[? "team"]			= team;
data[? "player"]		= player;
data[? "board"]			= board;
data[? "attack"]		= attack;
data[? "life"]			= life;
data[? "board_u"]		= board_u;
data[? "board_v"]		= board_v;
data[? "state"]			= state;
data[? "dir_moving"]	= dir_moving;
data[? "state"]			= state;