function scr_player_crouch(){
	mask_index = spr_player_crouchmask
	move = (key_left + key_right)
	if (sprite_index == spr_crouchstart && floor(image_index) == (image_number - 1))
        sprite_index = spr_crouch
	if (move != 0)
	{
		xscale = move
		image_speed = 0.35
		movespeed = 2
		sprite_index = spr_crawl
		if (!instance_exists(obj_walkeffect))
			instance_create(x, y + 35, obj_walkeffect)
	}
	else
	{
		audio_stop_sound(sfx_walk)
		if (sprite_index != spr_land)
			sprite_index = spr_crouch
		image_speed = 0.35
		movespeed = 0
	}
	if (key_jump2 && (!(place_meeting_solid(x, (y - 16)))) && (!(place_meeting_solid(x, (y - 32)))))
	{	
		audio_stop_sound(sfx_walk)
		instance_create(x, y, obj_effect)
		obj_effect.sprite_index = spr_jumpeffect
		state = states.crouchjump
		vsp = -4
		grav = 0.2
		image_index = 0
		sprite_index = spr_crouchjump
	}
	if (!grounded)
	{
		audio_stop_sound(sfx_walk)
		state = states.crouchjump
		grav = 0.2
		image_index = 0
		sprite_index = spr_crouchfall
	}
	if (!key_down && (!(place_meeting_solid(x, (y - 16)))) && (!(place_meeting_solid(x, (y - 32)))))
	{
		state = states.normal
		sprite_index = spr_idle
		mask_index = spr_player_mask
		image_speed = 0.35
		image_index = 0
	}
	hsp = (movespeed * xscale)
}