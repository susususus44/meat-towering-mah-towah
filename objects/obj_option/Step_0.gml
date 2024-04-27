scr_getinput()
menuselect = []
array_push(menuselect, [(global.bloodenabled == 1 ? "ON" : "OFF"), (global.mcpigbrother == 1 ? "ON" : "OFF"), (global.intro == 1 ? "ON" : "OFF"), (global.shadows == 1 ? "ON" : "OFF"), (global.isnoisy == 1 ? spr_liveiconnoise : spr_liveicon)])
array_push(menuselect, [(global.fullscreen == 1 ? "FULLSCREEN" : (global.fullscreen == 2 ? "BORDERLESS WINDOW" : "WINDOWED")), (global.vsync ? "ON" : "OFF"), string_concat(global.windowscale, "X")])
array_push(menuselect, [floor(global.vol * 100), floor(global.musicvol * 100), floor(global.audiovol * 100)])
bgy += 0.9
bgx += 0.9
index += 0.35
angle1 += 1
angle2 -= 1.1
move = ((-key_up2) + key_down2)
move1 = (key_left2 + key_right2)
if (!instance_exists(obj_optionkeyselect)) {
if (move != 0 && opened)
{
    scr_soundeffect(sfx_menubeep)
	selected += move
	selected = clamp(selected, -1, (array_length(menu[sectionselect]) - 1))
}
menugui = lerp(menugui, 0, 0.2)
if (selected == -1)
{
	if (move1 != 0) {
		sectionselect += move1
		sectionselect = clamp(sectionselect, 0, array_length(sections) - 1)
		menugui = 200 * move1
	}
}
if (array_length(menuselect[sectionselect]) > 5)
	var plus = (selected >= 3 ? (selected - 3) * 100 : 0)
else
	plus = 0
menugui1 = Approach(menugui1, 100 - plus, 18)
if key_jump2
	scr_soundeffect(sfx_punch1)
	
if (key_attack)
{
	instance_destroy()
}
}
if (selected != -1) {
if (menu[sectionselect][selected] == "BLOOD EFFECT" && key_jump2)
{
	switch (global.bloodenabled)
	{
		case 0:
			global.bloodenabled = 1
			break
		case 1:
			global.bloodenabled = 0
			break
		default:
			global.bloodenabled = 1
			break
	}
}
if (menu[sectionselect][selected] == "CHARACTER" && key_jump2)
{
	switch (global.isnoisy)
	{
		case 0:
			global.isnoisy = 1
			break
		case 1:
			global.isnoisy = 0
			break
		default:
			global.isnoisy = 1
			break
	}
}
if (menu[sectionselect][selected] == "VSYNC" && key_jump2)
{
	switch (global.vsync)
	{
		case 0:
			global.vsync = 1
			break
		case 1:
			global.vsync = 0
			break
		default:
			global.vsync = 1
			break
	}
	display_reset(0, global.vsync)
}
if (menu[sectionselect][selected] == "WINDOW MODE" && key_jump2)
{
	switch (global.fullscreen)
	{
		case 0:
			global.fullscreen = 1
			window_set_fullscreen(true)
			window_set_size(960, 540)
			window_set_showborder(true)
			break
		case 1:
			global.fullscreen = 2
			window_set_fullscreen(false)
			window_set_size(960 * 2, 540 * 2)
			window_set_position(0, 0)
			window_set_showborder(false)
			break
		case 2:
			global.fullscreen = 0
			window_set_fullscreen(false)
			window_set_size(960, 540)
			window_set_position(1920 / 2, 1080 / 2)
			window_set_showborder(true)
			break
		default:
			global.fullscreen = 2
			window_set_fullscreen(false)
			window_set_size(960 * 2, 540 * 2)
			window_set_position(0, 0)
			window_set_showborder(false)
			break
	}
}
if (menu[sectionselect][selected] == "WINDOW SCALE")
{
	if (key_left2 || scr_press(vk_left))
		global.windowscale -= 1
	if (key_right2 || scr_press(vk_right))
		global.windowscale += 1
	global.windowscale = clamp(global.windowscale, 1, 4)
	window_set_size(960 * global.windowscale, 540 * global.windowscale)
}
if (menu[sectionselect][selected] == "MASTER VOLUME")
{
	if (key_left || scr_holding(vk_left))
		global.vol -= 0.01
	if (key_right || scr_holding(vk_right))
		global.vol += 0.01
}
if (menu[sectionselect][selected] == "MUSIC VOLUME")
{
	if (key_left || scr_holding(vk_left))
		global.musicvol -= 0.01
	if (key_right || scr_holding(vk_right))
		global.musicvol += 0.01
	audio_sound_gain(mu_pause, global.musicvol, 0)
}
if (menu[sectionselect][selected] == "SFX VOLUME")
{
	if (key_left || scr_holding(vk_left))
		global.audiovol -= 0.01
	if (key_right || scr_holding(vk_right))
		global.audiovol += 0.01
}
if (menu[sectionselect][selected] == "MCPIGS BROTHER" && key_jump2)
{
	switch (global.mcpigbrother)
	{
		case 0:
			global.mcpigbrother = 1
			break
		case 1:
			global.mcpigbrother = 0
			break
		default:
			global.mcpigbrother = 1
			break
	}
}
if (menu[sectionselect][selected] == "STARTING INTRO" && key_jump2)
{
	switch (global.intro)
	{
		case 0:
			global.intro = 1
			break
		case 1:
			global.intro = 0
			break
		default:
			global.intro = 1
			break
	}
}
if (menu[sectionselect][selected] == "CHANGE CONTROLS" && key_jump2 && !instance_exists(obj_optionkeyselect)) {
	
}
if (menu[sectionselect][selected] == "SHADOWS" && key_jump2)
{
	switch (global.shadows)
	{
		case 0:
			global.shadows = 1
			break
		case 1:
			global.shadows = 0
			break
		default:
			global.shadows = 1
			break
	}
}
}
audio_master_gain(global.vol);
global.vol = clamp(global.vol, 0, 1)
global.musicvol = clamp(global.musicvol, 0, 1)
global.audiovol = clamp(global.audiovol, 0, 1)
if (global.fullscreen == 2)
window_set_position(0, 0)