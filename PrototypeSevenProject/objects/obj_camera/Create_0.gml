image_scale = 6;

view_width = 2400 / image_scale;
view_height = 1800 / image_scale;
window_scale = 3;

//Camera Settings
enable_follow = true;
follow_object = obj_Player;

enable_smoothing = true;
smoothing_speed = 0.1;

enable_room_clamp = true;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);
//surface_resize(application_surface, 480, 360);