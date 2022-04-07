//window_set_cursor(cr_none);
//cursor_sprite = spr_MouseMain;

//if (mouse_check_button(mb_left))
//{
//	cursor_sprite = spr_mouseMain2;
//}




x=device_mouse_x_to_gui(0);
y=device_mouse_y_to_gui(0);

if (mouse_check_button(mb_left)) 
	{
	image_index=1;
	}
else
	{
	image_index=0;
	}
	
	
//Bounds
//if (x > (camera_get_view_width(view_camera[0]) - 8))   {x = (camera_get_view_width(view_camera[0]) - 8);}
//if (x < 8)											   {x = 8;}
//if (x > (camera_get_view_height(view_camera[0]) - 8))  {x = (camera_get_view_height(view_camera[0]) - 8);}
//if (y < 8)											   {y = 8;}

//if (x > (room_width - 8))   {x = (room_width - 8);}
//if (x < 8)					{x = 8;}
//if (x > (room_height - 8))  {x = (room_height - 8);}
//if (y < 8)					{y = 8;}
