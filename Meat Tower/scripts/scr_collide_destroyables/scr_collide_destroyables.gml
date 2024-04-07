// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_collide_destroyables(){
	if (movespeed >= 8)
	{
	if (place_meeting(x + (3 * xscale), y, obj_destroyable))
	{
		if (state == states.mach || state == states.machroll)
		{
			with (instance_place(x + (6 * xscale), y, obj_destroyable))
				instance_destroy()
		}
	}
	if (place_meeting(x + (3 * xscale), y, obj_destroyable1))
	{
		if (state == states.mach || state == states.machroll)
		{
			with (instance_place(x + (8 * xscale), y, obj_destroyable))
				instance_destroy()
		}
	}
	if (place_meeting(x + (3 * xscale), y, obj_metalblock))
	{
		if ((state == states.mach || state == states.machroll) && movespeed >= 8)
		{
			with (instance_place(x + (4 * xscale), y, obj_metalblock))
				instance_destroy()
		}
	}
	if (place_meeting(x, y + 1, obj_destroyable))
	{
		if (state == states.slam)
		{
			with (instance_place(x, y + 1, obj_destroyable))
				instance_destroy()
		}
	}
	if (place_meeting(x, y + 1, obj_destroyable1))
	{
		if (state == states.slam)
		{
			with (instance_place(x, y + 1, obj_destroyable))
				instance_destroy()
		}
	}
	}
}