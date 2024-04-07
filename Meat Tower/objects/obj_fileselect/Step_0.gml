scr_getinput()
bgy += wave(-0.9, 0.9, 10, 1)
bgx += 0.9
move = ((-key_up2) + key_down2)
if !instance_exists(obj_option) && !instance_exists(obj_fadeout)
	selected += move
if (move != 0 && !instance_exists(obj_option) && !instance_exists(obj_fadeout))
    scr_soundeffect(sfx_menubeep)
selected = clamp(selected, 0, (array_length(menu) - 1))
menugui = Approach(menugui, (opened == 1 ? 170 : 540), 40)
if (selected != 3)
	global.file = string_concat("saves/Saveslot", selected + 1)
else
	global.file = 0
if (key_jump2 && !instance_exists(obj_fadeout))
{
	with(instance_create_depth(x, y, depth - 1, obj_fadeout))
		fadespeed = 0.05
}
if (instance_exists(obj_fadeout) && obj_fadeout.fadein)
{
	audio_stop_sound(mu_fileselect)
	room_goto(testroom)
}
if (key_attack2)
{
	opened = 0
}

if (!opened && menugui == 540)
{
	scr_soundeffect(sfx_menuwoosh)
	audio_stop_sound(mu_fileselect)
	scr_music(mu_menu)
	instance_destroy()
}