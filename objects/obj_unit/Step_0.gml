script_execute(state);

// Unit Transparency -- Only Tied To Player Local
if (obj_player_local.unit_selected == undefined && (obj_player_local.unit_touching != undefined && obj_player_local.unit_touching == id))
	alpha = 1.0;
else if (obj_player_local.unit_selected != undefined && obj_player_local.unit_selected == id)
	alpha = 1.0;
else
	alpha = 0.5;
	
// Flash Red
if (alarm[0] > -1 && alarm[0] mod 10 == 0)
	flash_red = !flash_red;
	
// Die If Health Reaches Zero
if (life <= 0) {
	network_unit_destroy_write(board_u, board_v);
	instance_destroy();	
}