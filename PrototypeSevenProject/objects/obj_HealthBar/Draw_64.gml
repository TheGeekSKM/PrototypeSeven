draw_sprite(spr_HealthBar_Background, 0, health_bar_x, health_bar_y);

draw_sprite_stretched(spr_HealthBar, 0, health_bar_x, health_bar_y, 
	min(((obj_Player.current_health / obj_Player.max_health) * health_bar_width), health_bar_width),
	health_bar_height);
	
draw_sprite(spr_HealthBar_Foreground, 0, health_bar_x, health_bar_y);