function scr_enemy_normal(){
	hsp = (movespeed * xscale)
	turncooldown--
	var needturned = (!place_meeting_solid(x + 30 * xscale, y + 15) || !place_meeting_solid(x + 20 * xscale, y + 4))
	if (needturned && turncooldown <= 0 && grounded) {
		state = enemystates.turn
		image_index = 0
		image_speed = 0.35
		sprite_index = spr_turn
		hsp = 0
		movespeed = 0
	}
	var playerlength = (distance_to_object(obj_player) <= 100)
	var rubberbandsp = (playerlength == 1 ? 0.2 : 2)
	if rubberbanding
		movespeed = approach(movespeed, rubberbandsp, 0.1)
	else
		movespeed = approach(movespeed, 2, 0.1)
}