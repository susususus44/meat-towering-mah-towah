scr_blood_create(40)
	with (instance_create(x + 50, y + 45, obj_fixedeffect)) {
		sprite_index = spr_explosion
	}
audio_play_sound(sfx_explosion, 1, false)