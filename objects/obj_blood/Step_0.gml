if (sprite_index != spr_blooddone)
	scr_collision()
vsp += 0.3
if (sprite_index != spr_blooddone)
{
	if (place_meeting(x + 2, y, obj_solid))
	{
		sprite_index = spr_blooddone
	}
	if (place_meeting(x - 2, y, obj_solid))
	{
		sprite_index = spr_blooddone
	}
	if (place_meeting(x, y - 2, obj_solid))
	{
		sprite_index = spr_blooddone
	}
	if (place_meeting(x, y + 1, obj_solid) || place_meeting(x, y + 20, obj_platform))
	{
		sprite_index = spr_blooddone
	}
}
bloodcooldown++
if (bloodcooldown >= 300)
{
	image_alpha = Approach(image_alpha, 0, 0.05)
}
if image_alpha == 0
	instance_destroy()