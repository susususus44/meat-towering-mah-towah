function scr_player_machroll(){
	if (!key_down && !place_meeting(x, y - 16, obj_solid))
	{
		state = states.mach
		sprite_index = spr_run
		image_index = 0
		image_speed = 0.35
		mask_index = spr_player_mask
	}
	if place_meeting_solid(x + 2 * xscale, y)
	{
		state = states.bump
		vsp = -2
		hsp = 0
		movespeed = 0
		sprite_index = spr_bump
		image_index = 0
		image_speed = 0.35
	}
	if (!grounded)
	{
		scr_soundeffect(sfx_slamstart)
		vsp = 0
		state = states.dive
		sprite_index = spr_dive
		vsp = -3
		image_index = 0
		if isnoisy
		{
			state = states.wallbounce
			sprite_index = spr_playerN_divebombfall
		}
	}
	hsp = (movespeed * xscale)
}