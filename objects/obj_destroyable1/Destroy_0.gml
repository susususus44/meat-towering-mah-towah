if (ds_list_find_index(global.saveroom, id) == -1)
{
	scr_blood_create(30)
	global.collect += 50
}
ds_list_add(global.saveroom, id)