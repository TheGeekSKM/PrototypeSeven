
#macro view view_camera[0]

view_width = 2400 / image_scale;
view_height = 1800 / image_scale;

//set size of view
camera_set_view_size(view, view_width, view_height);

//set position of view
if (enable_follow)
{
    if (instance_exists(follow_object))
    {
        //Locks the Camera to the object and to the Room
        if (enable_room_clamp)
        {
            var _x = clamp(follow_object.x - (view_width / 2), 0, (room_width - view_width));
            var _y = clamp(follow_object.y - (view_height / 2), 0, (room_height - view_height));
    
            if (enable_smoothing)
            {
                var _cur_x = camera_get_view_x(view);
                var _cur_y = camera_get_view_y(view);
            
                camera_set_view_pos(view, 
                    lerp(_cur_x, _x, smoothing_speed), 
                    lerp(_cur_y, _y, smoothing_speed));
            }
            else
            {
                camera_set_view_pos(view, _x, _y);
            }
        }
        else
        {
            var _x = follow_object.x - (view_width / 2);
            var _y = follow_object.y - (view_height / 2);
    
            if (enable_smoothing)
            {
                var _cur_x = camera_get_view_x(view);
                var _cur_y = camera_get_view_y(view);
            
                camera_set_view_pos(view, 
                    lerp(_cur_x, _x, smoothing_speed), 
                    lerp(_cur_y, _y, smoothing_speed));
            }
            else
            {
                camera_set_view_pos(view, _x, _y);
            }
        }
    
        //Camera Smoothing
        
    }
}