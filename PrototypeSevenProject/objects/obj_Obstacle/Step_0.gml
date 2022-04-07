if (obj_EscapeButton.game_paused == 0) {
	
	direction_timer++;
	if (direction_timer == (seconds_change * 60))
	{
	facing_direction = irandom_range(1, 4);
	direction_timer = 0;
	}

	/// first check for collision event
	if (place_meeting(x+hspeed,y+vspeed,obj_Player) || place_meeting(x+hspeed,y+vspeed,obj_wall)
	 || place_meeting(x+hspeed,y+vspeed,obj_Obstacle))
{
	x=xprevious;
	y=yprevious;
	speed = speed*-bounce;
}	

	/// speed government
	// this part caps speed between maxspeed and minspeed
	if (speed>maxspeed) speed = maxspeed;
	if (speed<minspeed) speed = minspeed;

	// this part makes the vehicle slow down when not being acted upon
	if (speed >0) speed -=decel;  
	if (speed <0) speed +=decel;


	// this stops the vehicle dead once it is moving slow enough
	if (abs(speed)<minspeed) speed =0;



	//increase speed while holding W key
	if (facing_direction == 1)
{
	motion_set (image_angle,speed);
    speed += accel;
}

	//check to see if this causes collision	
	if (place_meeting(x+hspeed,y+vspeed,obj_Player) || place_meeting(x+hspeed,y+vspeed,obj_wall)
	|| place_meeting(x+hspeed,y+vspeed,obj_Obstacle))
{
	x=xprevious;
	y=yprevious;
	speed = speed*-bounce;
	
}
	
	//turn right while holding D key
	if (facing_direction == 4)
	{
	// if we are moving forward do this
	if (speed >0)
	{
		if (speed <2)
		{
			image_angle = image_angle -speed;
			motion_set (image_angle,speed);
		}
		else
		{
			image_angle = image_angle -2;
			motion_set (image_angle,speed);
		}
	}

    // if we are moving backward do this
	if (speed <0)
	{
		image_angle = image_angle -speed;
		motion_set (image_angle,speed);
	}
}
	
	
//turn left while holding A key
if (facing_direction == 3)
{
	// if we are moving forward do this
    if (speed >0)
    {
        if (speed < 2)
        {
            image_angle=image_angle +speed;
            motion_set (image_angle,speed);
        }
        else
        {
            image_angle = image_angle +2;
            motion_set (image_angle,speed);
        }
    }

	// if we are moving backwards do this
    if (speed <0)
    {    
        image_angle = image_angle +speed;
        motion_set (image_angle,speed);
    }
}
	
//slow down while we hold S key
if (facing_direction == 2)
{
	motion_set (image_angle,speed);
	speed -= accel;	
}

//check to see if this causes collision	
if (place_meeting(x+hspeed,y+vspeed,obj_Player) || place_meeting(x+hspeed,y+vspeed,obj_wall)
	 || place_meeting(x+hspeed,y+vspeed,obj_Obstacle))
{
	x=xprevious;
	y=yprevious;
	speed = speed*-bounce;
	
}

}
else
{
	speed = 0;
}
