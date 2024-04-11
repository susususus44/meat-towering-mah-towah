if (image_alpha == 1)
{
	global.panic = false
	audio_stop_all()
	room_goto(rm_timesup)
}