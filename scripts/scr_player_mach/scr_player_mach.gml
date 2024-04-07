function scr_player_mach(){
	move = (key_left + key_right)
	if (!audio_is_playing(sfx_mach2) && sprite_index == spr_player_mach)
		scr_soundeffect(sfx_mach2)
	if (!audio_is_playing(sfx_mach1) && sprite_index == spr_player_run)
		scr_soundeffect(sfx_mach1)
	if (machafterimage <= 1 && movespeed >= 8)
	{
		flash = 1
		rage = 1
		with (instance_create_depth(x, y, depth + 1, obj_machafterimage)) {
			sprite_index = other.sprite_index
			image_index = other.image_index
			image_xscale = other.xscale
			image_yscale = other.yscale
		}
	}
	else
		rage = 0
	if (key_down && grounded)
	{
		state = states.machroll
		sprite_index = spr_player_machroll
		mask_index = spr_player_crouchmask
		image_speed = 0.35
		image_index = 0
	}
	if (!key_run && grounded)
	{
		state = states.normal
		hsp = 0
		movespeed = 0
	}
	if (key_jump2 && grounded)
	{	
		instance_create(x, y, obj_effect)
		obj_effect.sprite_index = spr_jumpeffect
		vsp = -6
		grav = 0.2
		image_index = 0
	}
	if (movespeed >= 8 && sprite_index == spr_player_run)
	{
		sprite_index = spr_player_mach
		flash = 1
	}
	if (grounded && key_attack2)
	{
		audio_stop_sound(sfx_walk)
		state = states.punch
		sprite_index = spr_player_punchprep
		image_speed = 0.35
		image_index = 0
		scr_soundeffect(sfx_punchcharge)
	}
	if (place_meeting_solid(x + 1 * xscale, y) && grounded && !place_meeting(x + 1 * xscale, y, obj_destroyable))
	{
		state = states.bump
		vsp = -2
		hsp = 0
		movespeed = 0
		sprite_index = spr_player_bump
		image_index = 0
		image_speed = 0.35
	}
	if (place_meeting_solid(x + 1 * xscale, y) && !grounded && !place_meeting(x + 1 * xscale, y, obj_destroyable))
	{
		state = states.cling
		vsp = 0
		hsp = 0
		movespeed = 0
		sprite_index = spr_player_cling
		image_index = 0
		image_speed = 0.35
	}
	if (xscale != move && move != 0 && grounded)
	{
		state = states.machslide
		image_index = 0
		image_speed = 0.35
		sprite_index = spr_player_machslidestart
	}
	if (key_down2 && !grounded)
	{
		scr_soundeffect(sfx_slamstart)
		vsp = 0
		state = states.dive
		sprite_index = spr_player_dive
		vsp = -3
		image_index = 0
	}
	movespeed = Approach(movespeed, 10, 0.1)
	grav = 0.3
	hsp = (movespeed * xscale)
}