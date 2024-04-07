draw_set_font(global.bigfont)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
draw_set_color(c_white)
draw_set_alpha((fade / 2))
draw_sprite_tiled(spr_mainmenubg, 0, bgx, bgy)
draw_set_alpha(fade)
if instance_exists(obj_option)
	return 0;
draw_sprite_ext(spr_logo, -1, 260, (menugui - 50) + wave(-5, 5, 2, 0) + 130, 1.5, 1.5, 0, c_white, 1)
draw_set_halign(fa_center)
draw_text_scribble(300, menugui + 300, randommessage[randommessageid])
draw_set_halign(fa_right)
for (var i = 0; i < array_length(menu); i++)
{
	var col = (selected == i ? c_white : c_gray)
	var waveeff = (selected == i ? "" : "")
	var str = string_concat(waveeff, menu[i])
	draw_set_colour(col)
	draw_sprite(spr_mainmenuselect, 0, menugui1 - 360, (270 + (i * 80)) - 10)
	draw_text_scribble(menugui1, (370 + (i * 80)) - 40, str)
}
draw_set_colour(c_white)
draw_set_alpha(textfade)
draw_text_scribble(480, 400, "[wave]PRESS JUMP")
draw_set_alpha(1)