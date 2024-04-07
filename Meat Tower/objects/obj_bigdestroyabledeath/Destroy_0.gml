	scr_soundeffect(sfx_enemyhit)
	if (global.bloodenabled)
	{
		repeat (15)
			instance_create_depth(x + 16, y + 36, depth - 1, obj_blood)
	}
	repeat(2)
	{
		with (instance_create_layer(x + 8, y + 30, "Instances_1", obj_animatedparticle))
		{
			sprite_index = spr_pigtroyablegib2
		}
	}
	repeat(irandom_range(2, 5))
	{
		with (instance_create_layer(x + 8, y + 30, "Instances_1", obj_animatedparticle))
		{
			sprite_index = spr_pigtroyablegib1
		}
	}