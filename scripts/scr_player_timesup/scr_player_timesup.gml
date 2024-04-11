function scr_player_timesup(){
	if (sprite_index == spr_player_deathstart)
	{
		vsp = 0
		hsp = 0
		if (floor(image_index) == image_number - 1)
		{
			sprite_index = spr_player_deathend
			image_index = 0
			vsp = -6
			grav = 0.3
		}
	}
}