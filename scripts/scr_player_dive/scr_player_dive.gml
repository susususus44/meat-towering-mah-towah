function scr_player_dive(){
	vsp = 14
	if (key_jump2)
	{
		scr_soundeffect(sfx_slamstart)
		vsp = 0
		state = states.slam
		sprite_index = spr_player_slam1
		vsp = -3
		image_index = 0
	}
	if (grounded) {
		sprite_index = spr_player_run
		state = states.mach
	}
	if (place_meeting_solid(x + 1 * xscale, y) && !place_meeting(x + 1 * xscale, y, obj_destroyable))
	{
		xscale *= -1
		scr_create_effect(spr_hiteffect)
	}
	hsp = (movespeed * xscale)
}