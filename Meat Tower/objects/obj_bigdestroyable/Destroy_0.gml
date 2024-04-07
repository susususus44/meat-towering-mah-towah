if (ds_list_find_index(global.saveroom, id) == -1)
{
	instance_create(x - 13, y - 36, obj_bigdestroyabledeath)
}
ds_list_add(global.saveroom, id)