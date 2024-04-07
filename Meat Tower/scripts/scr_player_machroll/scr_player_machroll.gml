function scr_player_machroll(){
	if ((!key_down && !place_meeting(x, y - 16, obj_solid)) || !grounded)
	{
		state = states.mach
		sprite_index = spr_player_run
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
		sprite_index = spr_player_bump
		image_index = 0
		image_speed = 0.35
	}
	hsp = (movespeed * xscale)
}