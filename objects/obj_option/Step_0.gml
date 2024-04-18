scr_getinput()
menuselect = []
array_push(menuselect, [(global.bloodenabled == 1 ? "ON" : "OFF"), (global.mcpigbrother == 1 ? "ON" : "OFF"), (global.intro == 1 ? "ON" : "OFF")])
array_push(menuselect, [(global.fullscreen == 1 ? "ON" : "OFF"), (global.vsync ? "ON" : "OFF")])
array_push(menuselect, [floor(global.vol * 100), floor(global.musicvol * 100), floor(global.audiovol * 100)])
bgy += 0.9
bgx += 0.9
angle1 += 1
angle2 -= 1.1
move = ((-key_up2) + key_down2)
move1 = (key_left2 + key_right2)
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
var plus = (selected >= 2 ? (selected - 2) * 100 : 0)
menugui1 = Approach(menugui1, 100 - plus, 7)
if key_jump2
	scr_soundeffect(sfx_punch1)
if (key_attack)
{
	instance_create_depth(x, y, depth - 1, obj_saveicon)
	instance_destroy()
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
if (menu[sectionselect][selected] == "FULLSCREEN" && key_jump2)
{
	switch (global.fullscreen)
	{
		case 0:
			global.fullscreen = 1
			window_set_fullscreen(global.fullscreen)
			break
		case 1:
			global.fullscreen = 0
			window_set_fullscreen(global.fullscreen)
			break
		default:
			global.fullscreen = 1
			window_set_fullscreen(global.fullscreen)
			break
	}
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
}
audio_master_gain(global.vol);
global.vol = clamp(global.vol, 0, 1)
global.musicvol = clamp(global.musicvol, 0, 1)
global.audiovol = clamp(global.audiovol, 0, 1)