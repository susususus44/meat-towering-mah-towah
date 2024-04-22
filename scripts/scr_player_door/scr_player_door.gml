function scr_player_door(){
	if (floor(image_index) == (image_number - 1) && !instance_exists(obj_fadeout) && !instance_exists(obj_levelstart)) {
		if (sprite_index == spr_entergate || global.panic)
		{
			instance_create(x, y, obj_levelstart)
			if (global.panic)
			{
				obj_levelstart.level = "BACK TO HUB"
				obj_levelstart.timer = 60
			}
		}
		else
			instance_create(x, y, obj_fadeout)
		image_speed = 0
	}
	shadowalpha = 1
	if ((instance_exists(obj_fadeout) && obj_fadeout.fadein) || (instance_exists(obj_levelstart) && obj_levelstart.drawx <= 0))
	{
		if (!exitlevel) {
			room_goto(targetRoom)
			sprite_index = spr_walkfront
			image_index = 0
			state = states.comeoutdoor
		}
		else
		{
			room_goto(global.resettoroom)
			obj_player1.x = global.resettox
			obj_player1.y = global.resettoy
			global.panic = false
		}
	}
}
