scr_getinput()
bgy += wave(-1, 1, 30, 0)
bgx += wave(-1, 1, 10, 0)
move = ((-key_up2) + key_down2)
if scr_menunotexist() && inmenu
	selected += move
if (move != 0 && scr_menunotexist() && inmenu)
    scr_soundeffect(sfx_menubeep)
selected = clamp(selected, 0, (array_length(menu) - 1))
if (inmenu)
{
	menugui = lerp(menugui, 200, 0.1)
	menugui1 = Approach(menugui1, 960, 15)
	textfade = Approach(textfade, 0, 0.1)
}
else
{
	menugui = lerp(menugui, 270, 0.1)
	textfade = Approach(textfade, 1, 0.1)
}
if opened
    fade = Approach(fade, 1, 0.1)
else
    fade = Approach(fade, 0, 0.1)
if (key_jump2 && scr_menunotexist() && inmenu)
{
switch (selected)
{
	case 0:
		audio_stop_sound(mu_menu)
		instance_create_depth(x, y, depth - 1, obj_fileselect)
		break
	case 1:
		instance_create_depth(x, y, depth - 1, obj_option)
		break
	case 2:
		game_end()
		break
}
}
if (key_jump && !inmenu)
{
	inmenu = 1
}