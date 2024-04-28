vsp += 0.3
done = false
if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_slope))
	done = 1
if (!done)
{
	x += hsp
	y += vsp
}
if (done)
	image_angle = 90 * randomspin
else
	image_angle += 90
bloodcooldown++
if (bloodcooldown >= 600)
{
	image_alpha = Approach(image_alpha, 0, 0.05)
}
if image_alpha == 0
	instance_destroy()