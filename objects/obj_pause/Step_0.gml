scr_getinput()
if opened == 0 && key_start && !instance_exists(obj_option) && !instance_exists(obj_levelstart) && obj_player1.sprite_index != spr_player_entergate
{
	playerx = obj_player1.x - camera_get_view_x(view_camera[0]) 
	playery = obj_player1.y - camera_get_view_y(view_camera[0]) 
	playersprite = obj_player1.sprite_index
	playerindex = obj_player1.image_index
	playerxscale = obj_player1.xscale
	playeryscale = obj_player1.yscale
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
	instance_activate_object(obj_audiomanager)
	selected = 0
	menu = ["RESUME", "OPTIONS"]
	if (room != rm_hub && room != testroom)
	{
		array_push(menu, "RESTART")
	}
	array_push(menu, "EXIT")
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
playerx = lerp(playerx, 100, 0.05)
playery = lerp(playery, 400, 0.05)
playerxscale = lerp(playerxscale, 3, 0.05)
playeryscale = lerp(playeryscale, 3, 0.05)
playerindex = lerp(playerindex, 0, 0.07)
if (key_jump2 && opened)
{
	switch (menu[selected])
	{
		case "RESUME":
			if (sprite_exists(spr_custom))
				sprite_delete(spr_custom)
			audio_resume_all()
			audio_stop_sound(mu_pause)
			opened = 0
			instance_activate_all()
		case "OPTIONS":
			if !instance_exists(obj_option)
				instance_create_depth(x, y, depth, obj_option)
			break
		case "RESTART":
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
		case "EXIT":
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
			instance_destroy(obj_levelstart)
			break
	}
}
