function scr_hurtplayer(argument0){
	with (argument0) {
	if (state != states.hurt && hitbuffer < 0)
	{
		var randomchance = irandom_range(0, 5)
		if (randomchance <= 2)
			audio_play_sound(choose(sfx_owie, sfx_ow, sfx_ahshit, sfx_hurtjumpbetter, sfx_grrr), 3, false)
		scr_create_effect(spr_hurteffect)
		state = states.hurt
		vsp = -10
		xscale *= -1
		movespeed = (other.object_index != obj_rollingpig ? 8 : 16)
		hsp = (other.object_index != obj_rollingpig ? 8 : 16)
		sprite_index = spr_hurt
		image_index = 0
		image_speed = 0.35
		global.collect -= 10
		global.collect = clamp(global.collect, 0, 10000000000)
	}
	}
}