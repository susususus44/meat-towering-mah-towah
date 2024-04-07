if opened
{
	shader_set(sh_greyscael)
	var _screenWidth = display_get_width()
	var _screenHeight = display_get_height()
	shader_set_uniform_f(shader_get_uniform(sh_blur, "u_resolution"), _screenWidth, _screenHeight)
	shader_set_uniform_f(shader_get_uniform(sh_blur, "u_resolution"), 3)
	draw_sprite(spr_custom, 0, 0, 0)
	shader_reset()
}
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_alpha((fade / 2))
draw_rectangle_color(0, 0, view_wport[0], view_hport[0], c_black, c_black, c_black, c_black, false)
draw_set_alpha(1)
if (instance_exists(obj_option))
	return 0;
draw_sprite(spr_pause1, 0, menugui, 0)
draw_sprite(spr_pause2, 0, menugui1 - 60, 322)
if (global.panic)
{
	draw_sprite(spr_pausearm, 0, menugui2, 100)
}
draw_set_halign(fa_left)
draw_set_font(global.defaultfont)
draw_set_color(c_white)
if (opened)
{
	draw_text_ext(20, 520, "press z to jump\npress x to attack\npress a to throw items\npress tab to change items\npress down while jumping to slam\nwhen hitting a floor with slam press jump to slam jump\nyou can wall jump by running and touching a wall while running", 20, 1000)
	draw_text_ext(20, 220, "press f1 to become noisy and press f5 to noclip \nand press f3 during panic to make the timer 0", 20, 1000)
}

draw_set_font(global.bigfont)
draw_set_halign(fa_right)
for (var i = 0; i < array_length(menu); i++)
{
    draw_set_color((selected == i ? c_white : c_gray))
	draw_text_ext_transformed(menugui1 + (selected == i ? irandom_range(-1, 1) : 0) - (i * 40) + 110, (360 + (i * 40)) + (selected == i ? irandom_range(-1, 1) : 0), menu[i], 1, 100000, 1, 1, 0);
}
draw_set_alpha(1)

