function scr_player_machslide(){
	hsp = (movespeed * xscale)
	movespeed = approach(movespeed, 0, 0.2)
	if (grounded && sprite_index == spr_player_machslidestart && floor(image_index) == (image_number - 1) && movespeed <= 2)
	{
        sprite_index = spr_player_run
		state = states.mach
		image_index = 0
		image_speed = 0.35
		movespeed = 6
		xscale *= -1
	}
	if (sprite_index == spr_player_machslidestart && floor(image_index) == (image_number - 1) && movespeed > 1)
	{
        image_speed = 0
	}
}