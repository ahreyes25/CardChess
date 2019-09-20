script_execute(state);

// Unit Transparency
if (player.unit_selected == undefined && (player.unit_touching != undefined && player.unit_touching == id))
	alpha = 1.0;
else if (player.unit_selected != undefined && player.unit_selected == id)
	alpha = 1.0;
else
	alpha = 0.5;