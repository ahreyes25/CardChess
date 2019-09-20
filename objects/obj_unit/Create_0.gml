data = ds_map_create();

// Serialized Data
unit_type	= undefined;
team		= undefined;
player		= undefined;
board		= undefined;
attack		= undefined;
life		= undefined;
board_u		= undefined;
board_v		= undefined;
dir_moving	= undefined;
state		= unit_state_idle;
moved		= false;
attacked	= false;

// Non-Serialized Data
alpha			= 1;
show_info		= false;
show_move		= false;
show_attack		= false;
move_config		= [];
attack_config	= [];