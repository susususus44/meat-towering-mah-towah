function scr_player_normal(){
	mask_index = spr_player_mask
	move = (key_left + key_right)
	hsp = (movespeed * xscale)
	rage = 0
	if (instance_exists(obj_runeffect))
		obj_runeffect.image_xscale = xscale
	if (sprite_index == spr_player_land && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_idle
	if (sprite_index == spr_player_land2 && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_move
	if (sprite_index == spr_machslideend && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_idle
	if (move != 0)
	{
		if (sprite_index != spr_player_run && !audio_is_playing(sfx_walk))
			scr_soundeffect(sfx_walk)
		if (sprite_index != spr_player_land2)
			sprite_index = spr_player_move
		xscale = move
		image_speed = 0.35
		movespeed = 4
		if (!instance_exists(obj_walkeffect))
			instance_create(x, y + 35, obj_walkeffect)
	}
	else if (sprite_index != spr_player_land && sprite_index != spr_machslideend)
	{
		audio_stop_sound(sfx_walk)
		if (sprite_index != spr_player_land)
			sprite_index = spr_player_idle
		image_speed = 0.35
		movespeed = 0
	}
	if (key_run)
	{
		movespeed = 6
		state = states.mach
		sprite_index = spr_player_run
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
		image_index = 0
		sprite_index = spr_player_jump // fun fact, this code still works
	}
	if (!grounded)
	{
		momentum = 0
		audio_stop_sound(sfx_walk)
		state = states.jump
		grav = 0.2
		image_index = 0
		sprite_index = spr_player_fall
	}
	if (grounded && key_attack2 && !key_up)
	{
		audio_stop_sound(sfx_walk)
		state = states.punch
		sprite_index = spr_player_punchprep
		image_speed = 0.35
		image_index = 0
		scr_soundeffect(sfx_punchcharge)
	}
	if (grounded && key_attack2 && key_up)
	{
		audio_stop_sound(sfx_walk)
		state = states.uppunch
		sprite_index = spr_player_uppunchprep
		image_speed = 0.35
		image_index = 0
		scr_soundeffect(sfx_punchcharge)
	}
	if (grounded && key_knife2)
	{
		audio_stop_sound(sfx_walk)
		state = states.throwknife
		sprite_index = spr_player_knifethrow
		image_speed = 0.35
		image_index = 0
		movespeed = 0
	}
	if (key_down)
	{
		state = states.crouch
		sprite_index = spr_player_crouchstart
		mask_index = spr_player_crouchmask
		image_speed = 0.35
		image_index = 0
	}
	if (place_meeting_solid(x, y-16)) {
		state = states.crouch
		sprite_index = spr_player_crouch
	}
}