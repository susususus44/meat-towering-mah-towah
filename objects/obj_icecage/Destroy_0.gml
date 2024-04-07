if (ds_list_find_index(global.saveroom, id) == -1)
{
	global.amountoftoppins++
	repeat(irandom_range(2, 7))
	{
		with (instance_create_layer(x, y, "Instances_1", obj_animatedparticle))
		{
			sprite_index = spr_icedebris
		}
	}
	if (content == obj_enemy)
	{
		with (instance_create_depth(x, y, depth, content))
		{
			vsp = -6
			state = enemystates.meatbox
		}
	}
	else
	{
		with(instance_create_depth(x, y, depth, content))
			count = global.amountoftoppins
	}
}
ds_list_add(global.saveroom, id)