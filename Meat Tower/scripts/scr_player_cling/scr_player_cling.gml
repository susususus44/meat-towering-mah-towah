function scr_player_cling(){
	vsp = 0
	movespeed = 0
	if key_jump2
	{
		state = states.mach
		vsp = -7
		x += 2 * xscale
		xscale *= -1
		movespeed = 6
		sprite_index = spr_player_run
	}
	if key_down
	{
		state = states.jump
		vsp = 0
		sprite_index = spr_player_fall2
		image_index = 0
	}
	hsp = (movespeed * xscale)
}