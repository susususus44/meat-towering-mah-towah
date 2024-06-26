/*draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_color(c_white)
draw_set_alpha((fade / 2))
draw_sprite_tiled(bg_placeholder, 0, bgx, bgy)
draw_set_alpha(fade)
draw_sprite(spr_logo, -1, 480, (menugui - 50))
for (var i = 0; i < array_length(menu); i++)
{
	var col = (selected == i ? c_white : c_gray)
    draw_text_colour(480, (menugui1 + (i * 40)), menu[i], col, col, col, col, fade)
}
draw_set_alpha(1)*/
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_alpha(1)
if (!surface_exists(promptsurface))
    promptsurface = surface_create(198, 198)
surface_set_target(promptsurface)
draw_clear_alpha(c_black, 0)
draw_sprite_tiled(bg_placeholder, -1, bgx, bgy)
surface_reset_target()
draw_surface(promptsurface, 380, menugui + 1)
draw_sprite_ext(spr_fileselectbg, 0, 380, menugui, 1, 1, 0, c_white, 1)
for (var i = 0; i < array_length(menu); i++)
{
	var col = (selected == i ? c_white : c_gray)
    draw_text_colour(495, (menugui + (i * (i != 3 ? 60 : 62)) + 70), menu[i], col, col, col, col, 1)
}
if (instance_exists(obj_fadeout)) {
	draw_set_alpha(obj_fadeout.fadealpha)
	draw_set_color(c_black)
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])), false)
	draw_set_alpha(1)
}