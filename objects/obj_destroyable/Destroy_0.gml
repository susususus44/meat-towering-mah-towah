if (ds_list_find_index(global.saveroom, id) == -1)
{
	scr_create_particle(spr_destromeatbledebris, 0)
	scr_create_particle(spr_destromeatbledebris, 1)
	scr_create_particle(spr_destromeatbledebris, 2)
	scr_create_particle(spr_destromeatbledebris, 3)
}
ds_list_add(global.saveroom, id)