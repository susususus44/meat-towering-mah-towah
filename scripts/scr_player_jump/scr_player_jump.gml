function scr_player_jump(){
	doublejump = false
	if (!momentum)
        hsp = movespeed
    else
        hsp = (xscale * movespeed)
	move = (key_left + key_right)
	grav = 0.23
	
    if (sprite_index == spr_jump && floor(image_index) == (image_number - 1))
        sprite_index = spr_fall
    if (sprite_index == spr_player_backflip && floor(image_index) == (image_number - 1))
        sprite_index = spr_fall
	if (sprite_index == spr_jump2 && floor(image_index) == (image_number - 1))
        sprite_index = spr_fall2
	if (sprite_index == spr_slamjump1 && floor(image_index) == (image_number - 1))
        sprite_index = spr_slamjump2
	if (vsp >= 0 && grounded)
	{
	landanim = true
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
		movespeed = 0 
		if (movespeed != 0)
			sprite_index = spr_land2
		else
			sprite_index = spr_land
		scr_soundeffect(sfx_land)
		landanim = true
	}
	}
	if (move != 0 && !momentum)
	{
		if (movespeed > -4 && move == -1)
			movespeed -= 0.5
		if (movespeed < 4 && move == 1)
			movespeed += 0.5
	}
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
	if (key_attack2 && !key_up)
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
	if (key_knife2)
	{
		audio_stop_sound(sfx_walk)
		state = states.throwknife
		sprite_index = spr_throw1
		image_speed = 0.35
		image_index = 4
		movespeed = hsp * xscale
	}
	checkplayercrusher()
}