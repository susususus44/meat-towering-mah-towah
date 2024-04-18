if (drawgui)
{
	draw_set_alpha(1)
	
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    draw_sprite(spr_loading, index, 0 + sprite_get_width(spr_loading) - sprite_get_xoffset(spr_loading), 540 - sprite_get_height(spr_loading) + sprite_get_yoffset(spr_loading))
}
