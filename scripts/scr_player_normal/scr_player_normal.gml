function scr_player_normal(){
	mask_index = spr_player_mask
	move = (key_left + key_right)
	hsp = (movespeed * xscale)
	rage = 0
	if (distance_to_object(obj_boombox) < 200) {
		var idlespr = spr_player_breakdancin
		var movespr = spr_player_breakdancin
		image_speed = 0.7
	}
	else
	{
		var idlespr = spr_idle
		var movespr = spr_move
		image_speed = 0.35
	}
	if (instance_exists(obj_runeffect))
		obj_runeffect.image_xscale = xscale
	if (sprite_index == spr_land && floor(image_index) == (image_number - 1))
        sprite_index = idlespr
	if (sprite_index == spr_land2 && floor(image_index) == (image_number - 1))
        sprite_index = movespr
	if (sprite_index == spr_machslideend && floor(image_index) == (image_number - 1))
        sprite_index = idlespr
	if (move != 0)
	{
		if (sprite_index != spr_run && !audio_is_playing(sfx_walk))
			scr_soundeffect(sfx_walk)
		if (sprite_index != spr_land2)
			sprite_index = movespr
		xscale = move
		movespeed = 4
		if (!instance_exists(obj_walkeffect))
			instance_create(x, y + 35, obj_walkeffect)
	}
	else if (sprite_index != spr_land && sprite_index != spr_machslideend)
	{
		audio_stop_sound(sfx_walk)
		if (sprite_index != spr_land)
			sprite_index = idlespr
		movespeed = 0
	}
	if (key_run)
	{
		movespeed = 6
		state = states.mach
		sprite_index = spr_run
		image_index = 0
		image_speed = 0.35
	}
	if (key_jump2)
	{	
		state = states.jump
		audio_stop_sound(sfx_walk)
		instance_create(x, y, obj_effect)
		obj_effect.sprite_index = spr_jumpeffect
		vsp = -6
		movespeed = 4
		momentum = 0
		grav = 0.2
		jumpstop = 0
		image_index = 0
		sprite_index = (key_run == 1 ? spr_runjump : spr_jump)
	}
	if (!grounded)
	{
		momentum = 0
		audio_stop_sound(sfx_walk)
		state = states.jump
		grav = 0.2
		image_index = 0
		sprite_index = (runjump == 1 ? spr_fall2 : spr_fall)
	}
	if (grounded && key_attack2)
	{
		audio_stop_sound(sfx_walk)
		state = states.punch
		sprite_index = spr_punchprep
		image_speed = 0.35
		image_index = 0
		scr_soundeffect(sfx_punchcharge)
	}
	if (grounded && key_knife2)
	{
		audio_stop_sound(sfx_walk)
		state = states.throwknife
		sprite_index = spr_throw1
		image_speed = 0.35
		image_index = 0
		movespeed = 0
	}
	if (key_down)
	{
		state = states.crouch
		sprite_index = spr_crouchstart
		mask_index = spr_player_crouchmask
		image_speed = 0.35
		image_index = 0
	}
	if (place_meeting_solid(x, y-16)) {
		state = states.crouch
		sprite_index = spr_player_crouch
	}
}