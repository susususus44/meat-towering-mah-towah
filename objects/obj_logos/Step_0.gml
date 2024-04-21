scr_getinput()
timer--
backtimeout--
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
	if (image_alpha == 0 || key_attack2 && image_index == 2) && backtimeout < 0
	{
		with (instance_create(x, y, obj_intro))
			backtimeout = 3
		instance_destroy()
		layer_destroy("Backgrounds_1")
	}
	else if (image_index != 2 && image_alpha == 0 || key_attack2) && backtimeout < 0
	{
		with (instance_create(x, y, obj_logos))
		{
			image_index = other.image_index + 1
			backtimeout = 3
		}
		instance_destroy()
	}
	image_alpha = Approach(image_alpha, 0, 0.01)
}