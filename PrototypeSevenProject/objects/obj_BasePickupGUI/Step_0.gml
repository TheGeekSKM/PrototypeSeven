if (distance_to_object(obj_Player) <= range)
{
	
	obj_Player.base_pickups += value;

	audio_play_sound(aud_IceCreamPickup, 20, false);
	//TODO: Play a particle effect

	instance_destroy();

}

if (distance_to_object(obj_Obstacle) <= enemy_range)
{
	


	//audio_play_sound_at(aud_IceCreamPickup, 5, false);
	//TODO: Play a particle effect

	instance_destroy();

}
