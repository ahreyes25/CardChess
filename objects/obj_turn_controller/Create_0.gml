teams		= ds_list_create();
team_white	= ds_list_create();
team_blue	= ds_list_create();

ds_list_add(teams, team_white);
ds_list_add(teams, team_blue);

// Tracking Turns
current_team_turn			= noone;
next_team_turn				= noone;
previous_team_turn			= noone;
current_team_index			= 0;

current_player_turn			= noone;
next_player_turn			= noone;
previous_player_turn		= noone;
current_team_player_index	= 0;

// Set starting team to the first team in the list
current_team_turn = ds_list_find_value(teams, current_team_index);

// Set Starting Player
current_player_turn = ds_list_find_value(current_team_turn, current_team_player_index);

ts_team_update_order();
ts_player_update_order();

data = ds_map_create();