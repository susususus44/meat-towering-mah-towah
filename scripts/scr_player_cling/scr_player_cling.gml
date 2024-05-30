function scr_player_cling(){
	target_vsp = Approach(target_vsp, 0, 0.1)
	vsp = target_vsp
	movespeed = 0
	if key_jump2 && sprite_index != spr_player_clingjump
	{
		image_index = 0
		sprite_index = spr_player_clingjump
	}
	if key_down || !place_meeting(x + xscale, y, obj_solid) && state != states.mach
	{
		state = states.jump
		sprite_index = spr_player_fall2
		image_index = 0
	}
	if floor(image_index) == image_number - 1 && sprite_index == spr_player_clingjump
	{
		state = states.mach
		vsp = -8
		xscale *= -1
		movespeed = 6
		sprite_index = spr_player_runjump
	}
	hsp = (movespeed * xscale)
}