if (!audio_is_playing(mu_gameover))
{
	ds_list_clear(global.saveroom)
	ds_list_clear(global.baddieroom)
	audio_stop_all()
	instance_activate_all()
	obj_player1.state = states.comeoutdoor
	obj_player1.sprite_index = spr_player_comeoutdoor
	obj_player1.image_index = 0
	obj_player1.movespeed = 0
	obj_player1.exitlevel = 1
		if (!instance_exists(obj_levelstart))
		{
			with (instance_create(x, y, obj_levelstart))
			{
				timer = 120
				level = "BACK TO HUB"
			}
		}
		if (instance_exists(obj_levelstart) && obj_levelstart.timer <= 0)
		{
			room_goto(global.resettoroom)
			obj_player1.x = global.resettox
			obj_player1.y = global.resettoy
		}
	global.panic = 0
}
time--
if (time <= 0 && i < 9)
{
	if (str[i] == " ")
		i++
	with (instance_create(200 + (i * 75), 200, obj_timesupletter))
	{
		letter = other.str[other.i]
		image_xscale = 2
		image_yscale = 2
	}
	time = 25
		with (obj_camera)
		{
			shake_mag = 10
			shake_mag_acc = (30 / room_speed)
		}
	i++
}