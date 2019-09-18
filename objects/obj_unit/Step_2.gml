// Save Data
data[? "unit"]			= unit;
data[? "team"]			= team;
data[? "player"]		= player;
data[? "board"]			= board;
data[? "attack"]		= attack;
data[? "life"]			= life;
data[? "board_u"]		= board_u;
data[? "board_v"]		= board_v;
data[? "state"]			= state;
data[? "target_x"]		= target_x;
data[? "target_y"]		= target_y;
data[? "dir_moving"]	= dir_moving;

// Store Data In Board Grid
if (board != undefined && board_u != undefined && board_v != undefined)
	board_space_set_data(board, board_u, board_v, id);