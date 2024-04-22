draw_set_font(global.bigfont)
for (var i = 0; i < array_length(keys); ++i) {
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_text(20, 30 + (i * 40), keys[i][0])
	draw_set_halign(fa_right)
	draw_set_valign(fa_middle)
	draw_text(930, 30 + (i * 40), keys[i][1])
}