if !global.panic && audio_is_playing(mu_escape)
	audio_stop_sound(mu_escape)
audio_sound_gain(escape, global.musicvol, 0)
audio_sound_gain(global.mu, global.musicvol, 0)