function scr_player_slam(){
	move = key_left + key_right
	if (sprite_index == spr_slam1 && floor(image_index) == (image_number - 1))
	{
        sprite_index = spr_slam2
	}
	vsp += 0.3
	if (move != 0)
		hsp += move * 0.02
	else
		hsp = Approach(hsp, 0, 0.1)
	if (hsp <= -1 || hsp >= 1)
		hsp = Approach(hsp, 0, 0.1)
	if (move != 0)
		xscale = move
	if (grounded && sprite_index != spr_slam1)
	{
		hsp = 0
		with (obj_camera)
		{
			shake_mag = 2
			shake_mag_acc = 0.1
		}
		if (!audio_is_playing(sfx_slamsnd))
			scr_soundeffect(sfx_slamsnd)
		movespeed = 0
		sprite_index = spr_slam3
		if (sprite_index == spr_slam3 && floor(image_index) == (image_number - 1))
			state = states.normal
		if key_jump2 || isnoisy
		{
			scr_create_effect(spr_slamjumpeffect)
			runjump = 0
			mask_index = spr_player_mask
			scr_soundeffect(sfx_slamjump)
			state = states.jump
			sprite_index = spr_slamjump1
			image_index = 0
			image_speed = 0.35
			vsp = -10
			grav = 0.3
			movespeed = 5
			momentum = 0
		}
	}
	if (place_meeting(x, y + 14, obj_destroyable))
	{
		with (instance_place(x, y + 14, obj_destroyable))
			instance_destroy()
	}
	if (place_meeting(x, y + 14, obj_destroyable1))
	{
		with (instance_place(x, y + 14, obj_destroyable))
			instance_destroy()
	} /* so apperantly 
	THE SCRIPT I MADE SO DESTROYABLES GET DESTROYED 
	WHEN YOU TOUCH THEM WITH SLAM DOESNT WORK
	
	and guess why..
	BECAUSE GAMEMAKER SUCKS AND I HAVE TO PUT THEM IN SLAM ITSLEF
	i knew i shouldve used godot, but i dont understand shit in it sadly
	*/
	// at least you did it lol
	if (slamafterimage <= 1 && sprite_index == spr_slam2)
	{
		with (instance_create_depth(x, y, depth + 1, obj_machafterimage)) {
			sprite_index = other.sprite_index
			image_index = other.image_index
			image_xscale = other.xscale
			image_yscale = other.yscale
			image_blend = c_white
		}
	}
}