// Store Data In Board Grid
if (board != undefined && board_u != undefined && board_v != undefined)
	if (state == unit_state_idle && in_bounds(board.grid, board_u, board_v))
		board_space_set_data(board, board_u, board_v, data);

// Save Data
data[? "id"]			= id;
data[? "unit_type"]		= unit_type;
data[? "team"]			= team;
data[? "player"]		= player;
data[? "board"]			= board;
data[? "attack"]		= attack;
data[? "life"]			= life;
data[? "board_u"]		= board_u;
data[? "board_v"]		= board_v;
data[? "state"]			= state;
data[? "state"]			= state;
data[? "moved"]			= moved;
data[? "attacked"]		= attacked;