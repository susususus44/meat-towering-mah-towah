timer++
if (timer >= oinktimer && floor(image_index) == 5 && sprite_index != spr_pigtroyable_oink)
{
	oinktimer = irandom_range(200, 400)
	scr_oink()
	timer = 0
	sprite_index = spr_pigtroyable_oink
}
if (floor(image_index) == image_number - 1 && sprite_index == spr_pigtroyable_oink)
	sprite_index = spr_pigtroyable