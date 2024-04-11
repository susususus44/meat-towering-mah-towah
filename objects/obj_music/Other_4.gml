if (!global.panic)
{
	switch(room)
	{
		case rm_1:
			global.mu = mu_music
			break
		case rm_hub:
			global.mu = mu_hub
			break
		case city_1:
			global.mu = mu_city
			break
	}
	if (!audio_is_playing(global.mu) && room != rm_timesup)
	{
		audio_stop_sound(global.mu)
		scr_music(global.mu)
	}
}
