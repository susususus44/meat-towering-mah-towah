scr_getinput()
timer--
if (timer > 0)
{
	image_alpha = Approach(image_alpha, 1, 0.01)
	if (key_attack2)
	{
		image_alpha = 1
		timer = 0
	}
}
else
{
	if (image_alpha == 0 && image_index == 2)
	{
		room_goto(intro)
	}
	else if (image_index != 2 && image_alpha == 0)
	{
		with (instance_create(x, y, obj_logos))
			image_index = other.image_index + 1
		instance_destroy()
	}
	image_alpha = Approach(image_alpha, 0, 0.01)
}