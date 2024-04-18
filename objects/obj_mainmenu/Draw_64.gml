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
	var waveeff = (i == 0 ? "" : "")
	var str = string_concat(waveeff, menu[i])
	draw_set_colour(col)
	if (i != 0)
	{
		draw_set_halign(fa_right)
		draw_sprite(spr_mainmenuselect, 0, menugui1 - 437, (270 + (i * 80)) - 80)
		
	}
	else
	{
		draw_set_halign(fa_left)
		draw_sprite(spr_mainmenuselectfile, fileselected, menugui1 - 437, (270 + (i * 80)) - 80)
	}
	draw_text_scribble(menugui1 - (i == 0 ? 270 : 0), (370 + (i * 80)) - 110, str)
}
draw_set_colour(c_white)
draw_set_alpha(textfade)
draw_text_scribble(480, 400, "[wave]PRESS JUMP")
draw_set_alpha(1)
if (instance_exists(obj_fadeout)) {
	draw_set_alpha(obj_fadeout.fadealpha)
	draw_set_color(c_black)
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])), false)
	draw_set_alpha(1)
}
