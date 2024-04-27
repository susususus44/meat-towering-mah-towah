// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_player_comeoutdoor(){
	image_speed = 0.35
	hsp = 0
	vsp = 0
	landanim = false
	movespeed = 0
	shadowalpha = Approach(shadowalpha, 0, 0.02)
	if (sprite_index == spr_walkfront && floor(image_index) == (image_number - 1))
		state = states.normal
	if (sprite_index == spr_timesup && floor(image_index) == (image_number - 1))
		state = states.normal
}