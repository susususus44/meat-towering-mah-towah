if (isnoisy != global.isnoisy)
{
	isnoisy = global.isnoisy
	PlayerSpr()
}
if state != states.noclip
	scr_collision()
hitbuffer--
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
	case states.ladder: //i honestly don't want to make another function for such a small state. // fuck you mat
		scr_player_ladder()
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
if scr_press(vk_f12)
{
	if !spymode
	{
		spymode = 1
		audio_play_sound(sfx_mother, 1, false)
	}
	else if spymode
	{
		spymode = 0
		audio_play_sound(sfx_door, 1, false)
	}
	playerspr()
	
}
if flash
   alarm[0] = 2
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