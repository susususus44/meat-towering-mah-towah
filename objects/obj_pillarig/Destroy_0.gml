global.panic = 1
global.fill = 6000
scr_blood_create(10)
with(obj_music)
{
	audio_stop_sound(global.mu)
	audio_play_sound(escape, 1, true)
}