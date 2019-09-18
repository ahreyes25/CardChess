data	= ds_map_create();
pid		= undefined;
team	= undefined;
board	= undefined;
units	= ds_map_create();
deck	= ds_list_create();			// holds card ids
discard	= ds_list_create();			// holds card ids
hand	= ds_list_create();			// holds card instance ids
state	= player_state_place_king;

hand_x	= x;
hand_y	= y - 30;

can_draw		= false;
can_play		= false;
can_move		= false;
unit_on_mouse	= undefined;

deck[| 0] = CARD.SPAWN_PAWN_DRAW_1;
deck[| 1] = CARD.SPAWN_PAWN_DRAW_1;
deck[| 2] = CARD.SPAWN_PAWN_DRAW_1;