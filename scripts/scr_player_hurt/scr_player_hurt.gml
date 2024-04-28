// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_player_hurt(){
	audio_stop_sound(sfx_punchcharge)
    if (grounded && vsp >= 0)
	{
		hitbuffer = 100
		state = states.normal
	}
	grav = 0.3
	if (hsp == 0)
		movespeed = 0
	hsp = (movespeed * xscale)
	if (slamafterimage > 0)
		slamafterimage--
	else
	{
		slamafterimage = 6
		with (instance_create_depth(x, y, depth + 1, obj_machafterimage)) {
			ID = other.id
		}
	}
}