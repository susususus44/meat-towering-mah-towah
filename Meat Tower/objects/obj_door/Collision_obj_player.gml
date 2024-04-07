with (other) {
	if (key_up && grounded && sprite_index != spr_player_lookdoor && sprite_index != spr_player_comeoutdoor) {
		audio_play_sound(sfx_door, 1, false)
		hsp = 0
		movespeed = 0
		vsp = 0
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		sprite_index = spr_player_lookdoor
		image_index = 0
		state = states.door
	}
}