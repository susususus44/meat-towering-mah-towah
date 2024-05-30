function scr_player_normal(){
	mask_index = spr_player_mask
	move = (key_left + key_right)
	hsp = (movespeed * xscale)
	rage = 0
	var idlespr = spr_idle
	var movespr = spr_move
	if (instance_exists(obj_runeffect))
		obj_runeffect.image_xscale = xscale
	if (landanim) {
		if (sprite_index == spr_land)
		{
			if (floor(image_index) == (image_number - 1))
			{
				landanim = false
				sprite_index = idlespr
				image_index = 0
			}
		}
		else if (sprite_index == spr_land2 && floor(image_index) == (image_number - 1))
		{
			if (floor(image_index) == (image_number - 1))
			{
				landanim = false
				sprite_index = movespr
				image_index = 0
			}
		}
		else if (sprite_index == spr_machslideend && floor(image_index) == (image_number - 1))
		{
			if (floor(image_index) == (image_number - 1))
			{
				landanim = false
				sprite_index = idlespr
				image_index = 0
			}
		}
	}
	if (move != 0)
	{
		if (sprite_index != spr_run && !audio_is_playing(sfx_walk))
			scr_soundeffect(sfx_walk)
		if (!landanim)
			sprite_index = movespr
		xscale = move
		movespeed = 4
		if (!instance_exists(obj_walkeffect))
			instance_create(x, y + 35, obj_walkeffect)
	}
	else if (sprite_index != spr_land && sprite_index != spr_machslideend)
	{
		audio_stop_sound(sfx_walk)
		if (!landanim)
			sprite_index = idlespr
		movespeed = 0
	}
	if (key_jump2)
	{	
		state = states.jump
		audio_stop_sound(sfx_walk)
		scr_create_effect(spr_jumpdust)
		vsp = -6
		movespeed = 4
		momentum = 0
		grav = 0.2
		movespeed *= xscale
		jumpstop = 0
		image_index = 0
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
	if (grounded && key_attack2 && !key_up)
	{
		audio_stop_sound(sfx_walk)
		state = states.punch
		sprite_index = spr_punchprep
		image_speed = 0.35
		image_index = 0
		scr_soundeffect(sfx_punchcharge)
	}
	else if (grounded && key_attack2 && key_up)
	{
		state = states.bombjump
		sprite_index = spr_throw2
		image_speed = 0.35
		image_index = 5
	}
	if (grounded && key_knife2)
	{
		audio_stop_sound(sfx_walk)
		state = states.throwknife
		sprite_index = spr_throw1
		image_speed = 0.35
		image_index = 0
	}
	if (key_down && !place_meeting_solid(x, (y - 3)) || place_meeting(x, y, obj_solid))
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
	if (place_meeting(x,y,obj_palswapper)) && (key_up2)
	{
	if (playerpal < 5)
	{
	playerpal++	
	}
	else
	playerpal = 1;
	}
}