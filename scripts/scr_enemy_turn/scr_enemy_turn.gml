function scr_enemy_turn(){
	hsp = (movespeed * image_xscale)
	sprite_index = spr_turn
	movespeed = 0
	if (floor(image_index) == (image_number - 1))
	{
		movespeed = 2
		turncooldown = 10
		state = enemystates.normal
		image_xscale *= -1
		sprite_index = spr_normal
		image_index = 0
		image_speed = 0.35
	}
}