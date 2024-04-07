scr_collision()
hsp = (image_xscale * 12)
if (place_meeting_solid(x + 1 * image_xscale, y))
{
	instance_destroy()
}
if (place_meeting(x + 2 * image_xscale, y - 1, obj_enemy))
{
	with (instance_place(x + 2 * image_xscale, y, obj_enemy))
		instance_destroy()
}