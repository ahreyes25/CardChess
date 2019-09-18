data				= ds_map_create();
grid_width			= 4;
grid_height			= 4;
grid				= ds_grid_create(grid_width, grid_height);
board_sprite		= spr_board;
board_edge_sprite	= spr_board_edge;
space_width			= 16;
space_height		= 16;
spawn_size			= 2;

// Center Board In Room
x = (room_width  / 2) - (grid_width  * space_width)  / 2;
y = (room_height / 2) - (grid_height * space_height) / 2;