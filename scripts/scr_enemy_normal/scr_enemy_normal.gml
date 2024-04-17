function scr_enemy_normal(){
	hsp = (movespeed * image_xscale)
	turncooldown--
	var goingtoturn = place_meeting_solid(x + image_xscale * 2, y) || place_meeting((x + (image_xscale * 15)), (y + 31), obj_platformend)
	if (goingtoturn && turncooldown <= 0) {
		state = enemystates.turn
		image_index = 0
		image_speed = 0.35
		sprite_index = spr_turn
	}
	var playerlength = (distance_to_object(obj_player) <= 100)
	var rubberbandsp = (playerlength == 1 ? 0.2 : 2)
	if rubberbanding
		movespeed = approach(movespeed, rubberbandsp, 0.1)
	else
		movespeed = approach(movespeed, 2, 0.1)
}