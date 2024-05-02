if (isnoisy != global.isnoisy)
{
	isnoisy = global.isnoisy
	PlayerSpr()
}
if state != states.noclip
	scr_collision()
hitbuffer--
if (hitbuffer > 0)
	alpha = wave(0, 1, 0.1, 0)
else
	alpha = 1
if (object_index != obj_player2 && use_controls)
	scr_getinput()
else if (use_controls)
	scr_getinput2()
else
{
	scr_initinput()
}
if (instance_exists(obj_levelstart))
{
	if (obj_levelstart.timer < 0)
		use_controls = 1
	else
		use_controls = 0
}
if (state != states.jump)
	runjump = key_run
scr_collide_destroyables()
switch (state)
{
	case states.normal:
		scr_player_normal()
		break
	case states.jump:
		scr_player_jump()
		break
	case states.bump:
		scr_player_slide()
		break
	case states.punch:
		scr_player_punch()
		break
	case states.slam:
		scr_player_slam()
		break
	case states.hurt:
		scr_player_hurt()
		break
	case states.mach:
		scr_player_mach()
		break
	case states.noclip:
		scr_player_noclip()
		break
	case states.cling:
		scr_player_cling()
		break
	case states.crouch:
		scr_player_crouch()
		break
	case states.crouchjump:
		scr_player_crouchjump()
		break
	case states.machroll:
		scr_player_machroll()
		break
	case states.door:
		scr_player_door()
		break
	case states.comeoutdoor:
		scr_player_comeoutdoor()
		break
	case states.uppunch:
		scr_player_uppunch() //i couldve used punch but nah
		break
	case states.throwknife:
		scr_player_knifethrow()
		break
	case states.machslide:
		scr_player_machslide()
		break
	case states.dive:
		scr_player_dive()
		break
	case states.wallbounce:
		scr_playerN_bounce()
		break
	case states.crusher:
		scr_playerN_crusher()
		break
	case states.actor:
		scr_player_actor()
		break
	case states.timesup:
		scr_player_timesup()
		break
	case states.bombjump:
		scr_player_bombjump()
		break
	case states.ladder: //i honestly don't want to make another function for such a small state.
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
		break
}
if state != states.ladder
	if rot != 0
		rot = 0
if (scr_press(vk_f5))
	state = states.noclip //cheater // hell yeah i am one
if ((state == states.mach && movespeed > 8) || (state == states.slam && vsp > 0) || state = states.crusher || state == states.wallbounce)
	instakill = true
else
	instakill = false
if scr_press(vk_f1)
{
	if !isnoisy
	{
		isnoisy = 1
		audio_play_sound(boing, 1, false)
	}
	else if isnoisy
	{
		isnoisy = 0
		audio_play_sound(sfx_door, 1, false)
	}
	playerspr()
	
}
if flash
   flash--;
var overroomy = (y > room_height)
if ((overroomy || y < -10) && state != states.timesup) {
	x = obj_revive.x
	y = obj_revive.y
	scr_create_effect(spr_genericpoofeffect)
}
if state != states.mach && (audio_is_playing(sfx_machSKATE1) || audio_is_playing(sfx_machSKATE2))
{
	audio_stop_sound(sfx_machSKATE1)
	audio_stop_sound(sfx_machSKATE2)
}