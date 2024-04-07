draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_alpha(1)
draw_set_font(global.titlecardfont)
if (sprite_exists(selected))
	draw_sprite(selected, -1, room_width / 2 + sprite_get_xoffset(selected) - sprite_get_width(selected) / 2, room_height / 2 + sprite_get_yoffset(selected) - sprite_get_height(selected) / 2)
else
	draw_text(500, 200, "SPRITE DOESNT EXIST")