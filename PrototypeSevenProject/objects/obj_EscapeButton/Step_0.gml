
#region Debug Values
// show_debug_message();

#endregion


if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
   value_x, value_y, value_x + widthButton, value_y + heightButton))
{
	hover = true;
	
	if (!doOnce)
	{
		
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
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
	{
		
	}
	
}
