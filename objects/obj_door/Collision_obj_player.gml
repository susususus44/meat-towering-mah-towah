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
		if other.meattravelactivate
		{
			with obj_meat_travelcontroller
			{
				if (numberofrooms > 0)
				{
					if !active
						active = 1
					nextroom = random_range(0, numberofrooms)
					array_delete(avaiblerooms, nextroom, 1)
					numberofrooms -= 1
					with obj_player
					{
						audio_play_sound(sfx_door, 1, false)
						hsp = 0
						movespeed = 0
						vsp = 0
						targetDoor = "meat"
						targetRoom = other.avaiblerooms[other.nextroom]
						sprite_index = spr_player_lookdoor
						image_index = 0
						state = states.door
					}
				}
			}
		}
	}
}