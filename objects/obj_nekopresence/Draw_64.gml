if (ready == false)
{
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    draw_rectangle_color(-1000, -1000, 1000, 1000, c_black, c_black, c_black, c_black, 0)
    draw_text(480, 270, "This game has an auto save feature\nPlease do not restart or quit the game while this icon is on the screen\n\ninitilasing rpc")
    draw_sprite(spr_loading, index, 480, 220)
}
