
#region Debug Values
// show_debug_message();

#endregion


if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
	hover = true;
	
	if (!doOnce)
	{
		audio_play_sound(aud_ButtonHover, 10, false);
		doOnce = true;
	}

}

else 
{
	hover = false;
	doOnce = false;

}


if (mouse_check_button_pressed(mb_left))
{
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
		value_x, value_y, value_x + widthButton, value_y + heightButton))
	{
		audio_play_sound(aud_ButtonSelect, 10, false);
		game_paused = !game_paused;
	}
	
}

show_debug_message(string(game_paused));
