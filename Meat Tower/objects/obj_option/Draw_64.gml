draw_set_alpha(fade)
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_alpha(fade)
draw_sprite_tiled(spr_maniabg, 0, bgx, bgy)
var width = 300
var height = 270
draw_sprite_ext(sonicmanialol, 0, width, height, wave(1, 2, 10, 1), wave(1, 2, 10, 1), angle1, c_white, 1)
draw_sprite_ext(sonicmanialol, 1, width, height, wave(2, 1, 10, 1), wave(2, 1, 10, 1), angle2, c_white, 1)
for (var i = 0; i < array_length(menu); i++)
{
	draw_sprite(spr_menuselect, (selected == i ? 1 : 0), 580, (menugui1 + (i * 100) - 60))
	var col = (selected == i ? c_white : c_gray)
    draw_text_colour(780, (menugui1 + (i * 100)) + (menuselect[i] == "" ? 21 : 0), menu[i], col, col, col, col, 1)
	draw_text_colour(780, (menugui1 + (i * 100)) + 30, menuselect[i], col, col, col, col, 1)
}
draw_set_alpha(1)
