if (timer <= 0)
{
	fadeout = 1
}
timer--
fade = Approach(fade, (fadeout ? 0 : 1), 0.1)
if (saving) {
    switch (savingtype) {
        case savetype.settings:
            ini_open("options.ini")
            ini_write_real("options", "soundvolume", global.audiovol)
            ini_write_real("options", "blood", global.bloodenabled)
            ini_write_real("options", "fullscreen", global.fullscreen)
            ini_write_real("options", "volume", global.vol)
            ini_write_real("options", "musicvolume", global.musicvol)
            ini_write_real("options", "soundvolume", global.audiovol)
            ini_write_real("options", "intro", global.intro)
            ini_write_real("options", "shadows", global.shadows)
            ini_write_real("options", "windowscale", global.windowscale)
            ini_write_real("options", "isnoisy", global.isnoisy)
			timer = 10
			fadeout = false
			saving = false
            ini_close()
    }
}