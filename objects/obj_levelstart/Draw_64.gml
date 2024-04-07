draw_set_color(c_white)
draw_set_font(global.bigfont)
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_alpha(fade)
draw_sprite(spr_titlecard, 3, 0, 0)
draw_set_alpha(1)
draw_sprite(spr_titlecard, 1, 0, drawy)
draw_sprite(spr_titlecard, 0, drawx, 0)
draw_sprite(spr_titlecard, 2, -drawx, 0)
draw_sprite(spr_sausagecityicon, 0, drawx, 0)
draw_set_font(global.titlecardfont)
draw_text(930, drawy + 400, level)
draw_set_alpha(1)