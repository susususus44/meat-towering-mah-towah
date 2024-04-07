function scr_player_jump(){
	if (!momentum)
        hsp = (move * movespeed)
    else
        hsp = (xscale * movespeed)
	move = (key_left + key_right)
	grav = 0.23
    if (sprite_index == spr_jump && floor(image_index) == (image_number - 1))
        sprite_index = spr_fall
	if (sprite_index == spr_jump2 && floor(image_index) == (image_number - 1))
        sprite_index = spr_fall2
	if (sprite_index == spr_slamjump1 && floor(image_index) == (image_number - 1))
        sprite_index = spr_slamjump2
	if (vsp >= 0 && grounded)
	{
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
	else {
		state = states.normal
		hsp = 0
		movespeed = 0 
		if (movespeed != 0)
			sprite_index = spr_land2
		else
			sprite_index = spr_land
		scr_soundeffect(sfx_land)
	}
	}
	if (move != 0 && !momentum)
		xscale = move
	if !key_jump && vsp < 0 && !momentum && sprite_index != spr_fall2 && !jumpstop
	{
		vsp /= 20
		jumpstop = 1
	}
	if (key_down2)
	{
		scr_soundeffect(sfx_slamstart)
		vsp = 0
		state = states.slam
		sprite_index = spr_slam1
		vsp = -3
		image_index = 0
	}
	checkplayercrusher()
}