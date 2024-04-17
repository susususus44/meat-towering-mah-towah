if (other.instakill)
{
	instance_destroy()
	with (other)
	{
		if (key_jump)
			vsp = -4
		
	}
}
else
{
	scr_hurtplayer(other)
}