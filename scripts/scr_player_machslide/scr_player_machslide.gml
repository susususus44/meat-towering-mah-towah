function scr_player_machslide(){
	hsp = (movespeed * xscale)
	movespeed = approach(movespeed, 0, 0.3)
	if (floor(image_index) == image_number - 1 && sprite_index == spr_machslidestart)
		sprite_index = spr_machslide
	if (floor(image_index) == image_number - 1 && sprite_index == spr_machslideboost)
	{
		sprite_index = spr_mach
		image_index = 0
		state = states.mach
		movespeed = 7
		xscale *= -1
	}
	if (grounded && sprite_index == spr_machslide && movespeed == 0)
	{
        sprite_index = spr_machslideend
		state = states.normal
		image_index = 0
		image_speed = 0.35
		movespeed = 0
		landanim = 1
	}
	if (sprite_index == spr_machslidestart && floor(image_index) == (image_number - 1) && movespeed > 1)
	{
        image_speed = 0
	}
}