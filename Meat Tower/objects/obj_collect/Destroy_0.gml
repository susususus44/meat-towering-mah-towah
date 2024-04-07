if (ds_list_find_index(global.saveroom, id) == -1) {
	global.collect += add
	scr_soundeffect(sfx_collect, 2, false)
	ds_list_add(global.saveroom, id)
}

