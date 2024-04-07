if (state != enemystates.turn) {
var playernear = (distance_to_object(obj_player) <= 150)
if (attackcooldown <= 1)
	attackcooldown1 = 0
if (attackcooldown >= 50)
	attackcooldown1 = 1
if playernear
{
	if !angryspr
		sprite_index = spr_fish_angryprep
	else
		sprite_index = spr_fish_angry
	if (sprite_index == spr_fish_angryprep && floor(image_index) == (image_number - 1))
	{
		sprite_index = spr_fish_angry
		angryspr = 1
	}
	spr_turn = spr_fish_angryturn
	normalspr = 0
	attackcooldown++
}
else
{
	spr_turn = spr_fish_turn
	attackcooldown--
	angryspr = 0
	if !normalspr
		sprite_index = spr_fish_moveprep
	else
		sprite_index = spr_fish_move
	if (sprite_index == spr_fish_moveprep && floor(image_index) == (image_number - 1))
	{
		sprite_index = spr_fish_move
		normalspr = 1
	}
}

if (sprite_index == spr_fish_moveprep && floor(image_index) == (image_number - 1))
	sprite_index = spr_fish_moveprep
}