if (!obj_camera.visible)
	return 0;
draw_set_alpha(1)
draw_set_color(c_white)
draw_sprite_ext(sprite_index, image_index, 150 + sprite_get_xoffset(sprite_index), 100 + obj_camera.hudy, 1, 1, 0, c_white, 1)
draw_set_alpha(1)