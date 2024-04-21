function scr_enemy_normal(){
	hsp = (movespeed * image_xscale)
	turncooldown--
	var goingtoturn = ((!place_meeting(x + 60 * image_xscale, y + 2, par_collision) && !place_meeting_slope(x, y +1)) || place_meeting_solid((x + 1 * image_xscale), y - 3))
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