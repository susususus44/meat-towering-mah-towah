// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_player_bombjump(){
	vsp = 0
	hsp = 0
	sprite_index = spr_throw2
	if (floor(image_index) == 8 && !doublejump)
	{
		doublejump = true
		instance_create(x, y, obj_explosion)
		with (obj_camera)
		{
			shake_mag = 4
			shake_mag_acc = 0.1
		}
		state = states.jump
		sprite_index = spr_player_backflip
		image_index = 0
		vsp = -9
		jumpstop = true
		movespeed = 2
	}
}