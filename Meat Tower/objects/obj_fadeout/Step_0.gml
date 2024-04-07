if (fadealpha > 1)
{
    fadein = 1
}
if (fadein == 0)
    fadealpha += fadespeed
else if (fadein == 1)
    fadealpha -= fadespeed
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
