data = ds_map_create();

// Serialized Data
unit_type	= undefined;
team		= undefined;
player		= undefined;
board		= undefined;
board_u		= undefined;
board_v		= undefined;
state		= unit_state_idle;
moved		= false;
attacked	= false;
life_start	= undefined;
life		= undefined;
	
can_move_through_units	= false;

// Non-Serialized Data
alpha			= 1;
show_info		= false;
show_move		= false;
show_attack		= false;
move_config		= [];
attack_config	= [];
move_speed		= 10;
target_x		= undefined;
target_y		= undefined;
updated_configs	= false;

flash_red		= false;