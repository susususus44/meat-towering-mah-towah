draw_set_font(global.bigfont)
draw_sprite_tiled(bg_placeholder, -1, draw, draw)
draw_sprite_tiled(spr_hud, -1, -draw, -draw)
draw_set_alpha(1)
for (var i = 0; i < array_length(keys); ++i) {
	var _col = (i == key_selected ? c_white : c_gray)
	if i == 7
		_col = (i == key_selected ? c_red : c_gray)
	draw_set_color(_col)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_middle)
	var _keyname = string_concat(keys[i][0], ": ", translate_keycode(keys[i][1]))
	if i == 7
		_keyname = "EXIT"
	draw_text(960 / 2, 150 + (i * 40) + (_keyname == "EXIT" ? 20 : 0), _keyname)
}