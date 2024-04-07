if (ds_list_find_index(global.saveroom, id) == -1)
{
	scr_blood_create(15)
	repeat(2)
	{
		with (instance_create_layer(x, y, "Instances_1", obj_animatedparticle))
		{
			sprite_index = spr_pigtroyablegib2
		}
	}
	repeat(irandom_range(2, 5))
	{
		with (instance_create_layer(x, y, "Instances_1", obj_animatedparticle))
		{
			sprite_index = spr_pigtroyablegib1
		}
	}
	var enemy = choose(obj_enemy, obj_fish)
	with (instance_create_layer(x, y, "Instances_1", enemy))
	{
		vsp = -7
		state = enemystates.meatbox
	}
	scr_create_effect(spr_genericpoofeffect)
}
ds_list_add(global.saveroom, id)