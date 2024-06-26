index += 0.35
with (obj_player)
{		
	if (visible) {
	var _sprite_index = spr_player_idle
	if (spymode)
		_sprite_index = spr_spy
	
	pal_swap_set(spr_palette, playerpal, false)
	if (flash) {
		if (global.shadows)
			draw_sprite_ext(_sprite_index, image_index, x + 5, y + 2, xscale, yscale, rot, c_black, 0.4)
		draw_sprite_ext(_sprite_index, image_index, x, y, xscale, yscale, rot, c_white, alpha)
		if (_sprite_index == spr_player_slam2)
			draw_sprite(spr_slameffect, other.index, x, y)
	}
	else {
		if (global.shadows)
			draw_sprite_ext(_sprite_index, image_index, x + 5, y + 2, xscale, yscale, rot, c_black, 0.4 * alpha)
		draw_sprite_ext(_sprite_index, image_index, x, y, xscale, yscale, rot, c_white, alpha)
		if (_sprite_index == spr_player_slam2)
			draw_sprite(spr_slameffect, other.index, x, y)
	}
	draw_sprite_ext(_sprite_index, image_index, x, y, xscale, yscale, rot, c_black, shadowalpha)
	pal_swap_reset()
	}
}
with (obj_enemy)
{	
	if (object_index != obj_fish) {
		if (global.shadows)
			draw_sprite_ext(sprite_index, image_index, x + 5, y + 2, image_xscale, image_yscale, image_angle, c_black, 0.4)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
	}
	else
	{
		var waving = wave(4, -4, 1, -4)
		if (global.shadows)
			draw_sprite_ext(sprite_index, image_index, x, y - 20 + waving + 2, -image_xscale, image_yscale, image_angle, c_black, 0.4)
		draw_sprite_ext(sprite_index, image_index, x, y - 20 + waving, -image_xscale, image_yscale, image_angle, c_white, alpha)
	}
}
with (obj_collect)
{	
	var waving1 = wave(-2, 0, 0.1, 0)
	if (global.shadows)
		draw_sprite_ext(sprite_index, image_index, x + 5, y + waving1 + 2, image_xscale, image_yscale, image_angle, c_black, 0.4)
	draw_sprite_ext(sprite_index, image_index, x, y + waving1, image_xscale, image_yscale, image_angle, c_white, image_alpha)
}

