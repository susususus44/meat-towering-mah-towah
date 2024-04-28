if (ds_list_find_index(global.baddieroom, id) == -1)
{
	audio_play_sound(sfx_enemyhit, 1, false)
		scr_blood_create(80)
	scr_create_particle(spr_gibs, 0)
	scr_create_particle(spr_gibs, 1)
	scr_create_particle(spr_gibs, 2)
	scr_create_particle(spr_gibs, 3)
	scr_create_particle(spr_gibs, 4)
	scr_create_effect(spr_hiteffect)
}
ds_list_add(global.baddieroom, id)