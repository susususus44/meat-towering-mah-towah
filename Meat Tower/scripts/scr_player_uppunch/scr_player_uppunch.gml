function scr_player_uppunch(){
	if sprite_index == spr_player_uppunchprep
		charge++
	if charge >= 100 && sprite_index == spr_player_uppunchprep
		image_speed = 1
	else
		image_speed = 0.35
	move = (key_left + key_right)
	movespeed = Approach(movespeed, 0, 0.1)
	if (!key_attack && sprite_index != spr_player_uppunch)
	{
		with (instance_create_layer(x + 5 * xscale, y + 5, "Instances_1", obj_fixedeffect)) {
			sprite_index = spr_puncheffect
			image_xscale = other.xscale
			image_yscale = other.yscale
		}
		audio_stop_sound(sfx_punchcharge)
		scr_soundeffect(sfx_punch1)
		sprite_index = spr_player_uppunch
		with (instance_create_layer(x, y, "Instances_1", obj_punchhitbox))
		{
			image_xscale = other.xscale
			if other.charge >= 100
				supercharged = 1
			else
				supercharged = 0
		}
		charge = 0
		movespeed = 0
		image_index = 0
		image_speed = 0.35
	}
	if (sprite_index == spr_player_uppunch && floor(image_index) == (image_number - 1))
	{
        state = states.normal
		instance_destroy(obj_punchhitbox)
	}
	hsp = (movespeed * xscale)
}