if (!done)
	scr_collision()
vsp += 0.3
done = place_meeting(x - 1, y, par_collision) || place_meeting(x + 1, y, par_collision) || place_meeting(x, y - 1, par_collision) || place_meeting(x, y + 1,  par_collision)
bloodcooldown++
if (bloodcooldown >= 600)
{
	image_alpha = Approach(image_alpha, 0, 0.05)
}
if image_alpha == 0
	instance_destroy()