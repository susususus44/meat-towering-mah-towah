// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_player_bombjump(){
	if (sprite_index = spr_throw2) {
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
		momentum = true
		sprite_index = spr_player_backflip
		image_index = 0
		vsp = -9
		hsp = movespeed * xscale
		jumpstop = true
		//movespeed = 2
	}
	}
	else
	{
		move = key_left + key_right
		grav = 0.2
		if (floor(image_index) == image_number - 1 && sprite_index == spr_player_backflip)
			sprite_index = spr_fall
		if (grounded && vsp >= 0)
		{
			state = states.normal
			doublejump = false
		}
		hsp = clamp(hsp, -16, 16)
		hsp += move * 0.1
	}
}