draw_set_alpha(fade)
draw_sprite(sprite_index, -1, (960 + sprite_get_xoffset(sprite_index)) - sprite_get_width(sprite_index), (540 + sprite_get_yoffset(sprite_index)) - sprite_get_height(sprite_index))
draw_set_alpha(1)