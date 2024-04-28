if (!global.panic) {
for (var i = 0; i < array_length(musicarray); ++i)
{
    var curroom = array_get(musicarray[i], 0)
    var curmusic = array_get(musicarray[i], 1)
    if (room == curroom && !audio_is_playing(curmusic))
    {
		for (var l = 0; l < array_length(musicarray); ++l)
		{
			var mus = array_get(musicarray[l], 1)
			if (mus != curmusic)
				audio_stop_sound(mus)
		}
	
        audio_play_sound(curmusic, 1, true)
		show_debug_message("PLAYED AUDIO ", audio_get_name(curmusic))
    }
}
}