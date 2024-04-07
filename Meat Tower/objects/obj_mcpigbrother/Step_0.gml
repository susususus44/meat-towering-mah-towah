image_alpha = Approach(image_alpha, 1, 0.1)
if (image_alpha == 1)
{
    x = Approach(x, obj_player.x, 2)
    y = Approach(y, obj_player.y, 2)
}
image_xscale = wave(1, 0.7, 0.4, 0)
image_yscale = wave(1, 0.7, 0.4, 0)