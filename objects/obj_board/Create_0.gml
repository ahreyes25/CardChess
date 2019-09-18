data				= ds_map_create();

grid_width			= 4;
grid_height			= 4;
grid				= ds_grid_create(grid_width, grid_height);

board_sprite		= spr_board;
board_edge_sprite	= spr_board_edge;
space_width			= 16;
space_height		= 16;

// Center Board
x = (room_width  / 2) - (grid_width  * space_width)  / 2;
y = (room_height / 2) - (grid_height * space_height) / 2;

/*
// Spawn Random Units for Testing
for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		if (irandom(5) == 1) {
			var _world_coords = board_to_world(i, j, true);
			unit_create(UNIT.PAWN, TEAM.WHITE, _world_coords[_.X], _world_coords[_.Y], id, true);
		}
	}
}