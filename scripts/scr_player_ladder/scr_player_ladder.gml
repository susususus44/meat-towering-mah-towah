function scr_player_ladder(){
		if !key_up && !key_down && !-key_left && !key_right
			sprite_index = spr_player_ladder
		image_speed = 0.5
		rot = 0
		vsp = 0
		hsp = 0
		if !place_meeting(x, y, obj_ladder)
		{
			state = states.normal
			rot = 0
		}
		if key_up
		{
			vsp = -5
			sprite_index = spr_player_laddermove
			if !audio_is_playing(sfx_walk)
				scr_soundeffect(sfx_walk)
		}
		if key_down
		{
			vsp = 6
			sprite_index = spr_player_ladderdown
			if place_meeting(x, y + vsp, obj_solid)
				state = states.normal
			if !audio_is_playing(sfx_walk)
				scr_soundeffect(sfx_walk)
		}
		if -key_left
		{
			hsp = -6
			rot = 90
			sprite_index = spr_player_laddermove
			if !audio_is_playing(sfx_walk)
				scr_soundeffect(sfx_walk)
		}
		if key_right
		{
			hsp = 6
			rot = -90
			sprite_index = spr_player_laddermove
			if !audio_is_playing(sfx_walk)
				scr_soundeffect(sfx_walk)
		}
		if key_jump
		{
			vsp = -8
			rot = 0
			sprite_index = spr_player_jump
			state = states.jump
		}
}