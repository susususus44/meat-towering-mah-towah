with (other) {
	if (global.panic && key_up2 && grounded && sprite_index != spr_lookdoor && sprite_index != spr_walkfront) {
		global.panic = 0
		scr_soundeffect(sfx_door, 1, false)
		hsp = 0
		movespeed = 0
		vsp = 0
		targetDoor = "A"
		targetRoom = global.resettoroom
		sprite_index = spr_lookdoor
		image_index = 0
		state = states.door
		scr_ini_savefile_save(global.levelsaveto, "collect", global.collect)
	}
}