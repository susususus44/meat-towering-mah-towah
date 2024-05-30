function scr_player_mach(){
    if (sprite_index == spr_playerN_sidewayspin || sprite_index == spr_playerN_sidewayspinend)
    {
        if (floor(image_index) == (image_number - 1))
            sprite_index = spr_playerN_sidewayspinend
		if grounded
			sprite_index = spr_run
    }
	move = (key_left + key_right)
	if (slamafterimage > 0)
		slamafterimage--
	else if (movespeed >= 8)
	{
		slamafterimage = 6
		with (instance_create_depth(x, y, depth + 1, obj_machafterimage)) {
			ID = other.id
		}
	}
	if (key_down && grounded)
	{
		state = states.machroll
		sprite_index = spr_machroll
		mask_index = spr_player_crouchmask
		image_speed = 0.35
		image_index = 0
		vsp = 14
	}
	if (!key_run && grounded)
	{
		state = states.machslide
		sprite_index = spr_machslidestart
		image_index = 0
	}
	if (key_jump2 && grounded)
	{	
		instance_create(x, y, obj_effect)
		obj_effect.sprite_index = spr_jumpeffect
		vsp = -6
		grav = 0.2
		image_index = 0
	}
	if (grounded) {
	if (movespeed >= 8 && sprite_index == spr_run || sprite_index = spr_player_runjump)
	{
		sprite_index = spr_mach
		flash = 1
	}
	if (movespeed <= 8 && sprite_index == spr_mach || sprite_index = spr_player_runjump)
	{
		sprite_index = spr_run
		flash = 1
	}
	}
	if (grounded && key_attack2 && !key_up)
	{
		audio_stop_sound(sfx_walk)
		state = states.punch
		sprite_index = spr_punchprep
		image_speed = 0.35
		image_index = 0
		scr_soundeffect(sfx_punchcharge)
	}
	else if (key_attack2 && key_up)
	{
		state = states.bombjump
		sprite_index = spr_throw2
		image_speed = 0.35
		image_index = 5
	}
	if (place_meeting_solid(x + 1 * xscale, y) && grounded && !place_meeting(x + 1 * xscale, y, obj_destroyable))
	{
		state = states.bump
		vsp = -2
		hsp = 0
		movespeed = 0
		sprite_index = spr_bump
		image_index = 0
		image_speed = 0.35
	}
	if (place_meeting_solid(x + 1 * xscale, y) && !grounded && !place_meeting(x + 1 * xscale, y, obj_destroyable))
	{
		if !isnoisy
		{
			state = states.cling
			target_vsp = vsp
			hsp = 0
			movespeed = 0
			sprite_index = spr_player_cling
			image_index = 0
			image_speed = 0.35
		}
		else if isnoisy
		{
	        sprite_index = spr_playerN_wallbounce
	        with (instance_create(x, y, obj_effect))
	        {
	            sprite_index = spr_noisewalljumpeffect
	            image_speed = 0.4
	        }
	        scr_soundeffect(boing)
	        vsp = -12
			state = states.wallbounce
		}
	}
	if (xscale != move && move != 0 && grounded)
	{
		state = states.machslide
		image_index = 0
		image_speed = 0.35
		sprite_index = spr_machslideboost
	}
	if (key_down2 && !grounded)
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
	if (movespeed < 14)
	{
		movespeed += 0.1
	}
	grav = 0.3
	hsp = (movespeed * xscale)
	checkplayercrusher()
}