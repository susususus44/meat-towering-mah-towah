// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_player_knifethrow(){
	rage = 1
	if (global.item == 1)
		sprite_index = spr_throw2
	if (floor(image_index) == 8 && !knifethrown)
	{
		if (global.item == 0)
		{
			with (instance_create_layer(x, y + 2, "Instances_1", obj_knife))
			{
				image_xscale = other.xscale
				if (!other.key_up) {
				vsp = -4
				hsp = 8
				}
				else {
				image_angle = 90;	
				vsp = -8
				hsp = 0
				}
			}
		}
		if (global.item == 1)
		{
			with (instance_create_layer(x, y + 2, "Instances_1", obj_bomb))
			{
				image_xscale = other.xscale
				vsp = -6
				hsp = 8
			}
		}
		knifethrown = true
	}
	if (floor(image_index) == (image_number - 1))
	{
		landanim = false
		state = states.normal
		knifethrown = false
	}
	hsp = (movespeed * xscale)
	movespeed = Approach(movespeed, 0, 0.1)
}