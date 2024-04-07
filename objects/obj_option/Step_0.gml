scr_getinput()
menuselect = [(global.bloodenabled == 1 ? "ON" : "OFF"), (global.fullscreen == 1 ? "ON" : "OFF"), floor(global.vol * 100), floor(global.musicvol * 100), floor(global.audiovol * 100), (global.mcpigbrother == 1 ? "ON" : "OFF"), ""]
bgy += 0.9
bgx += 0.9
angle1 += 1
backbuffer--
angle2 -= 1.1
if !instance_exists(obj_keyconfig) {
move = ((-key_up2) + key_down2)
if (move != 0 && opened)
    scr_soundeffect(sfx_menubeep)
selected += move
selected = clamp(selected, 0, (array_length(menu) - 1))
menugui = lerp(menugui, (opened == 1 ? 200 : -500), 0.1)
var plus = (selected >= 2 ? (selected - 2) * 100 : 0)
menugui1 = Approach(menugui1, 100 - plus, 7)
if key_jump2
	scr_soundeffect(sfx_punch1)
if (key_attack2 && backbuffer <= 0)
{
	instance_create_depth(x, y, depth - 1, obj_saveicon)
	instance_destroy()
}
if (selected == 0 && key_jump2)
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
if (selected == 1 && key_jump2)
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
if (selected == 2)
{
	if (key_left || scr_holding(vk_left))
		global.vol -= 0.01
	if (key_right || scr_holding(vk_right))
		global.vol += 0.01
}
if (selected == 3)
{
	if (key_left || scr_holding(vk_left))
		global.musicvol -= 0.01
	if (key_right || scr_holding(vk_right))
		global.musicvol += 0.01
	audio_sound_gain(mu_pause, global.musicvol, 0)
}
if (selected == 4)
{
	if (key_left || scr_holding(vk_left))
		global.audiovol -= 0.01
	if (key_right || scr_holding(vk_right))
		global.audiovol += 0.01
}
if (selected == 5 && key_jump2)
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
if (selected == 6 && key_jump2 && !instance_exists(obj_keyconfig))
{
	instance_create(x, y, obj_keyconfig)
}
}
audio_master_gain(global.vol);
global.vol = clamp(global.vol, 0, 1)
global.musicvol = clamp(global.musicvol, 0, 1)
global.audiovol = clamp(global.audiovol, 0, 1)