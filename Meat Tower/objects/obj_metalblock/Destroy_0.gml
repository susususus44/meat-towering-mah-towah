if (ds_list_find_index(global.saveroom, id) == -1)
{
	scr_create_particle(spr_metalblockdebris, 0)
	scr_create_particle(spr_metalblockdebris, 1)
	scr_create_particle(spr_metalblockdebris, 2)
	scr_create_particle(spr_metalblockdebris, 3)
	audio_play_sound(sfx_metalbreak, 1, false)
}
ds_list_add(global.saveroom, id)