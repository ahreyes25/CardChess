if (x > player.hand_x + draw_speed)
	x -= draw_speed
else if (x > player.hand_x)
	x -= 1;
else
	x = player.hand_x;
	
if (y < player.hand_y - draw_speed)
	y += draw_speed
else if (y < player.hand_y)
	y += 1;
else
	y = player.hand_y;
	
if (x == player.hand_x && y == player.hand_y)
	state = card_state_idle;