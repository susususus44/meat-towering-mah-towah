function scr_player_jump(){
	if (!momentum)
        hsp = (move * movespeed)
    else
        hsp = (xscale * movespeed)
	move = (key_left + key_right)
	grav = 0.23
    if (sprite_index == spr_player_jump && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_fall
	if (sprite_index == spr_player_jump2 && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_fall2
	if (sprite_index == spr_player_slamjump && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_slamjump2
	if (vsp >= 0 && (grounded || groundedSlope || place_meeting(x, y + 1, obj_solid)))
	{
		state = states.normal
		hsp = 0
		movespeed = 0 
		if (movespeed != 0)
			sprite_index = spr_player_land2
		else
			sprite_index = spr_player_land
		scr_soundeffect(sfx_land)
	}
	if (move != 0 && !momentum)
		xscale = move
	if !key_jump && vsp < 0 && !momentum && sprite_index != spr_player_fall2
		grav = 0.6
	if (key_down2)
	{
		scr_soundeffect(sfx_slamstart)
		vsp = 0
		state = states.slam
		sprite_index = spr_player_slam1
		vsp = -3
		image_index = 0
	}
}