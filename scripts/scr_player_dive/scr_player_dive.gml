function scr_player_dive(){
	vsp = 14
	if (key_jump2)
	{
		scr_soundeffect(sfx_slamstart)
		vsp = 0
		state = states.slam
		sprite_index = spr_slam1
		vsp = -3
		image_index = 0
	}
	if (grounded) {
		sprite_index = spr_run
		state = states.mach
	}
	hsp = (movespeed * xscale)
	if (place_meeting_solid(x + 2 * xscale, y))
	{
		xscale *= -1
		scr_create_effect(spr_hiteffect)
	}
}