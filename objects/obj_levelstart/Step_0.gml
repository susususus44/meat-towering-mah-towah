timer--
if (timer <= 180)
{
	drawy = lerp(drawy, (timer >= -60 ? 0 : -545), 0.1)
	drawx = lerp(drawx, (timer >= 0 ? 0 : 960), 0.1)
	fade = Approach(fade, (timer >= 0 ? 1 : 0), 0.1)
	if (timer < 0 && drawy <= -540)
		instance_destroy()
}