if (ds_list_find_index(global.baddieroom, id) == -1)
{
	audio_play_sound(sfx_enemyhit, 1, false)
	if (object_index != obj_fish)
		scr_blood_create(50)
	scr_create_particle(spr_gibs, 0)
	scr_create_particle(spr_gibs, 1)
	scr_create_particle(spr_gibs, 2)
	scr_create_particle(spr_gibs, 3)
	scr_create_particle(spr_gibs, 4)
	scr_create_effect(spr_hiteffect)
	with (obj_camera)
	{
		shake_mag = 30
		shake_mag_acc = 1
	}
}
ds_list_add(global.baddieroom, id)