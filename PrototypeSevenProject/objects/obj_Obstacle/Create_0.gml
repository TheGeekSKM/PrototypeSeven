accel = 0.1;
maxspeed = 6;
minspeed =-2;
decel = 0.01;
bounce = 0.25;

direction_timer = 0;
seconds_change_min = 1;
seconds_change_max = 2;

seconds_change = irandom_range(seconds_change_min, seconds_change_max);

facing_direction = irandom_range(1, 4);