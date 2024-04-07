if (timer <= 0)
{
	fadeout = 1
	if (fade == 0)
		instance_destroy()
}
timer--
fade = Approach(fade, (fadeout ? 0 : 1), 0.1)