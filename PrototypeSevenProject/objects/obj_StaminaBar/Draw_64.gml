draw_sprite(spr_StaminaBar_Background, 0, stamina_bar_x, stamina_bar_y);

draw_sprite_stretched(spr_StaminaBar, 0, stamina_bar_x, stamina_bar_y, 
	min(((obj_Player.nos / obj_Player.nosMax) * stamina_bar_width), stamina_bar_width),
	stamina_bar_height);
	
draw_sprite(spr_StaminaBar_Foreground, 0, stamina_bar_x, stamina_bar_y);