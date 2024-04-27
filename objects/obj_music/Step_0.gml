if (global.panic && !audio_is_playing(mu_escape))
{
	for (var i = 1; i < array_length(musicarray); ++i)
	{
		var curmusic = array_get(musicarray[i], 1)
		if (audio_is_playing(curmusic))
		{
			audio_stop_sound(curmusic)
		}
	}
	audio_play_sound(mu_escape, 1, true)
}