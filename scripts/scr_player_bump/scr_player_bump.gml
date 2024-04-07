function scr_player_slide(){
	if (floor(image_index) == (image_number - 1)) && sprite_index == spr_bump
        state = states.normal
	grav = 0.2
	vsp += 0.1
	hsp = (movespeed * xscale)
}