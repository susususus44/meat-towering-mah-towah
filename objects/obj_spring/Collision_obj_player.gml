with (other)
{
	if (state != states.mach && state != states.slam)
	{
		vsp = -15
		grav = 0.6
		state = states.jump
		hsp = 0
		momentum = 0
		movespeed = 5
		sprite_index = spr_player_fall2
	}
	else if (state == states.mach)
	{
		vsp = -9
	}
}
if (sprite_index != spr_pigspring_active) {
	sprite_index = spr_pigspring_active
	scr_oink()
}