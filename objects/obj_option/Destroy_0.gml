ini_open("options.ini")
ini_write_real("options", "soundvolume", global.audiovol)
ini_write_real("options", "blood", global.bloodenabled)
ini_write_real("options", "fullscreen", global.fullscreen)
ini_write_real("options", "volume", global.vol)
ini_write_real("options", "musicvolume", global.musicvol)
ini_write_real("options", "soundvolume", global.audiovol)
ini_write_real("options", "resolutionwidth", window_get_width())
ini_write_real("options", "resolutionheight", window_get_height())
ini_close()