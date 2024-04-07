function scr_player_crouchjump(){
	move = (key_left + key_right)
    if (sprite_index == spr_crouchjump && floor(image_index) == (image_number - 1))
        sprite_index = spr_crouchfall
	if grounded || groundedSlope || place_meeting(x, y + 1, obj_solid)
	{
		state = states.crouch
		if (movespeed != 0)
			sprite_index = spr_land2
		else
			sprite_index = spr_land
		audio_play_sound(sfx_land, 8, false)
	}
	if move != 0
	{
		if (!runjump)
		{
			xscale = move
			movespeed = 2
		}
	}
	else if !runjump
	{
		movespeed = 0
	}
	hsp = (movespeed * xscale)
}