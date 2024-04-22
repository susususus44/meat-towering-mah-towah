with (other) {
	if (global.panic && key_up2 && grounded && sprite_index != spr_lookdoor && sprite_index != spr_walkfront) {
		hsp = 0
		movespeed = 0
		vsp = 0
		exitlevel = true
		sprite_index = spr_lookdoor
		image_index = 0
		state = states.door
		scr_ini_savefile_save(global.levelsaveto, "collect", global.collect)
	}
	if (other.image_index == 1 && state == states.comeoutdoor)
	{
		if (floor(image_index) == image_number - 2)
		{
			sprite_index = spr_timesup
			image_index = 0
			with (obj_camera)
			{
				shake_mag = 10
                shake_mag_acc = (30 / room_speed)
			}
			other.image_index = 0
		}
	}
}