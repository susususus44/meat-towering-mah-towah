// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_player_hurt(){
	audio_stop_sound(sfx_punchcharge)
    if (grounded && vsp >= 0)
	{
		hitbuffer = 100
		state = states.normal
		alarm[1] = 5
	}
	grav = 0.3
	if (hsp == 0)
		movespeed = 0
	hsp = (movespeed * xscale)
}