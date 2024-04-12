if (floor(image_index) == 4)
{
	global.panic = false
	audio_stop_all()
	room_goto(rm_timesup)
}