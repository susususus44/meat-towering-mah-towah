if (room != testroom) {
for (var i = 1; i < array_length(musicarray); ++i)
{
	var prevmusic = array_get(musicarray[i - 1], 1)
    var curroom = array_get(musicarray[i], 0)
    var curmusic = array_get(musicarray[i], 1)
    if (room != testroom && room == curroom && !audio_is_playing(curmusic))
    {
		audio_stop_sound(prevmusic)
        audio_play_sound(curmusic, 1, true)
    }
}
}