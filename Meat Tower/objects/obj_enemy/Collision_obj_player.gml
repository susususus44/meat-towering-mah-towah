if (other.state = states.slam && object_index != obj_fish && object_index != obj_rollingpig)
{
	if (other.key_jump)
		vsp -= 2
	instance_destroy()
}
else if (other.state = states.mach && object_index != obj_fish && object_index != obj_rollingpig)
{
	if (other.key_jump)
		vsp -= 2
	instance_destroy()
	other.movespeed += 0.5
}
else if (object_index == obj_fish || object_index == obj_rollingpig)
{
	if ((other.state = states.mach || other.state == states.jump) && (other.movespeed >= 8 && other.sprite_index == spr_player_mach) && object_index != obj_rollingpig)
	{
		if (other.key_jump)
			vsp -= 2
		instance_destroy()
		other.movespeed += 0.5
	}
	if (other.movespeed < 8)
	{
		with (other)
		{
			scr_hurtplayer()
		}
	}
}
	
	