var livesspr = spr_liveicon
var livesprx = 0 + sprite_get_xoffset(livesspr)
var livespry = 540 - sprite_get_yoffset(livesspr) - hudy
draw_sprite(livesspr, 0, livesprx, livespry)
draw_text(40, 500, lives)
if (!visible)
	return 0;
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_font(global.collectfont)
draw_sprite_ext(hudspr, -1, 105, hudy + 2 + 100, 1, 1, 0, c_black, 0.4)
draw_sprite(hudspr, -1, 100, hudy + 100)
var signspr = spr_collectsign
var signx = 960 - sprite_get_width(signspr) + sprite_get_xoffset(signspr)
var signy = hudy + sprite_get_yoffset(signspr)
draw_sprite(signspr, 0, signx, signy)
draw_text_transformed(935, hudy + 55, collect, 1, 1, 0)
draw_set_alpha(1)