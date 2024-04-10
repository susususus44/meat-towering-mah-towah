function scr_player_door(){
	if (floor(image_index) == (image_number - 1) && !instance_exists(obj_fadeout) && !instance_exists(obj_levelstart)) {
		if (sprite_index == spr_entergate)
			instance_create(x, y, obj_levelstart)
		else
			instance_create(x, y, obj_fadeout)
		image_speed = 0
	}
	shadowalpha = 1
	if ((instance_exists(obj_fadeout) && obj_fadeout.fadein) || (instance_exists(obj_levelstart) && obj_levelstart.drawx <= 0))
	{
		room = targetRoom
		sprite_index = spr_walkfront
		image_index = 0
		state = states.comeoutdoor
	}
}
