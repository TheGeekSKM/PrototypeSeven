if (obj_EscapeButton.game_paused)
{
	if (hover) { draw_sprite_ext(spr_QuitButton_strip2, 1, value_x, value_y, 2, 2, 0, c_white, 1); }
	else       { draw_sprite_ext(spr_QuitButton_strip2, 0, value_x, value_y, 2, 2, 0, c_white, 1); }
}
