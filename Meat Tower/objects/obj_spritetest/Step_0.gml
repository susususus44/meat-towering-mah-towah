scr_getinput()
move = (key_left2 + key_right2)
selected += move
for (var i = 0; counting == 0; )
{
	if (sprite_exists(i))
		i++
	else
	{
		counting = 1
		maxcount = i
	}
}
selected = clamp(selected, 0, 700)