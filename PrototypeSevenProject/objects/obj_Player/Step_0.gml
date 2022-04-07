if (obj_EscapeButton.game_paused == 0)
{
	
if (current_health <= 0)
{
	//TODO: include game end code here
	current_health = 0;
}

if (current_health > max_health) { current_health = max_health; }

/// first check for collision event
if (place_meeting(x+hspeed,y+vspeed,obj_wall) || place_meeting(x+hspeed,y+vspeed,obj_Obstacle))
{
	x=xprevious;
	y=yprevious;
	speed = speed*-bounce;
	
	if (!doOnce_collision)
	{
		//TODO: Collision Audio
		current_health--;
		doOnce_collision = true;
	}
}
else
{
	doOnce_collision = false;
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

if (keyboard_check(vk_shift))
{
	reset_NOS = false;
	if (nos > 0)
	{
		accel = 0.3;
		maxspeed = 9;
		nos--;
	}
	else if (nos <= 0)
	{
	    accel = 0.1;
	    maxspeed = 6;
	}
	
}

if (reset_NOS) 
{
	if (nos < nosMax)
	{
		if (timer_NOS == 15)
		{
			nos++;
			timer_NOS = 0;
		}
		else
		{
			timer_NOS++;
		}
	}
	else
	{
		timer_NOS = 0;
	}
}
else
{
	timer_NOS = 0;
}


//increase speed while holding W key
if (keyboard_check(ord("W")))
{
	motion_set (image_angle,speed);
    speed += accel;
}

//check to see if this causes collision	
if (place_meeting(x+hspeed,y+vspeed,obj_wall) || place_meeting(x+hspeed,y+vspeed,obj_Obstacle))
{
	x=xprevious;
	y=yprevious;
	speed = speed*-bounce;
	
	if (!doOnce_collision)
	{
		//TODO: Collision Audio
		current_health--;
		doOnce_collision = true;
	}
}
else
{
	doOnce_collision = false;
}
	
//turn right while holding D key
if (keyboard_check(ord("D")))
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
if (keyboard_check(ord("A")))
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
if (keyboard_check(ord("S")))
{
	motion_set (image_angle,speed);
	speed -= accel;	
}

//check to see if this causes collision	
if (place_meeting(x+hspeed,y+vspeed,obj_wall) || place_meeting(x+hspeed,y+vspeed,obj_Obstacle))
{
	x=xprevious;
	y=yprevious;
	speed = speed*-bounce;
	
	if (!doOnce_collision)
	{
		//TODO: Collision Audio
		current_health--;
		doOnce_collision = true;
	}
}
else
{
	doOnce_collision = false;
}
}
else
{
	speed = 0;
}
