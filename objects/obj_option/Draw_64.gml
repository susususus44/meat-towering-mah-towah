draw_set_alpha(fade)
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_alpha(fade)
draw_sprite(spr_titlecard, 4, 0, 0)
var width = 300
var height = 270
var col1 = (selected == -1 ? c_white : c_gray)
if (sectionselect != 0)
	draw_text_colour(0, 90, sections[sectionselect - 1], c_gray, c_gray, c_gray, c_gray, 1)
if (sectionselect != array_length(sections) - 1)
	draw_text_colour(960, 90, sections[sectionselect + 1], c_gray, c_gray, c_gray, c_gray, 1)
draw_text_colour(480, 90, sections[sectionselect], col1, col1, col1, col1, 1)
for (var i = 0; i < array_length(menu[sectionselect]); i++)
{
	var col = (selected == i ? c_white : c_gray)
	draw_set_halign(fa_left)
    draw_text_colour(50 + menugui, (menugui1 + (i * 80)) + 100, menu[sectionselect][i], col, col, col, col, 1)
	draw_set_halign(fa_right)
	draw_text_colour(910 + menugui, (menugui1 + (i * 80)) + 100, menuselect[sectionselect][i], col, col, col, col, 1)
}
draw_set_alpha(1)
