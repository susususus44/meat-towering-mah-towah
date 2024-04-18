if (other.instakill && object_index != obj_rollingpig)
{
	instance_destroy()
	with (other)
	{
		if (key_jump)
			vsp = -4
		
	}
}
else if (object_index != obj_enemy)
{
	scr_hurtplayer(other)
}