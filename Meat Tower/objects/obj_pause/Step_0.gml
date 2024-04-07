scr_getinput()
if opened == 0 && key_start && !instance_exists(obj_option) && obj_player1.sprite_index != spr_player_entergate
{
	if (instance_exists(obj_tip))
		tip = obj_tip.tip
	else
		tip = ""
	audio_play_sound(sfx_menuwoosh, 1, false)
	spr_custom = sprite_create_from_surface(application_surface, 0, 0, 960, 540, false, false, 0, 0)
	audio_pause_all()
	audio_play_sound(mu_pause, 1, true)
	opened = 1
	instance_deactivate_all(true);
	selected = 0
}
bgy += 0.9
bgx += 0.9
move = ((-key_up2) + key_down2)
if !instance_exists(obj_option)
	selected += move
selected = clamp(selected, 0, (array_length(menu) - 1))
menugui = Approach(menugui, (opened == 1 ? 0 : -574), 75)
menugui1 = Approach(menugui1, (opened == 1 ? 800 : 1500), 75)
menugui2 = lerp(menugui2, (opened == 1 ? -200 : -800), 0.1)
between = lerp(between, (opened == 1 ? 40 : 500), 0.1)
if move != 0 && opened && !instance_exists(obj_option)
	audio_play_sound(sfx_menubeep, 1, false)
if opened 
    fade = Approach(fade, 1, 0.1)
else
    fade = Approach(fade, 0, 0.1)
if (key_jump2 && opened)
{
	switch (selected)
	{
		case 0:
			if (sprite_exists(spr_custom))
				sprite_delete(spr_custom)
			audio_resume_all()
			audio_stop_sound(mu_pause)
			opened = 0
			instance_activate_all()
		case 1:
			if !instance_exists(obj_option)
				instance_create_depth(x, y, depth, obj_option)
			break
		case 2:
			if (room != rm_hub && room != testroom)
			{
				ds_list_clear(global.saveroom)
				ds_list_clear(global.baddieroom)
				opened = 0
				audio_stop_all()
				instance_activate_all()
				obj_player1.targetDoor = global.doorrestartto
				obj_player1.state = states.comeoutdoor
				obj_player1.sprite_index = spr_player_comeoutdoor
				obj_player1.image_index = 0
				obj_player1.movespeed = 0
				room_goto(global.roomrestartto)
				global.panic = 0
			}
			break
		case 3:
			if (room != rm_hub && room != testroom)
			{
				ds_list_clear(global.saveroom)
				opened = 0
				audio_stop_all()
				instance_activate_all()
				obj_player1.state = states.comeoutdoor
				obj_player1.sprite_index = spr_player_comeoutdoor
				obj_player1.image_index = 0
				obj_player1.movespeed = 0
				obj_player1.exitlevel = 1
				room_goto(global.resettoroom)
				obj_player1.x = global.resettox
				obj_player1.y = global.resettoy
				global.panic = 0
			}
			else
			{
				instance_destroy(all, false)
				audio_stop_all()
				room_goto(Mainmenu)
				ds_list_clear(global.saveroom)
				opened = 0
			}
			break
	}
}
