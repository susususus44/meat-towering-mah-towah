ini_open("options.ini")
global.vol = ini_read_real("options", "volume", 1);
global.musicvol = ini_read_real("options", "musicvolume", 1);
global.audiovol = ini_read_real("options", "soundvolume", 1);
global.fullscreen = ini_read_real("options", "fullscreen", 0);
global.bloodenabled = ini_read_real("options", "blood", 1);
global.item = ini_read_real("options", "item", 0)
global.mcpigbrother = ini_read_real("options", "mcpigsbrother", 1)
window_set_fullscreen(global.fullscreen)
audio_master_gain(global.vol);
ini_close()
scr_initinputglobals()
global.amountoftoppins = 0
global.file = 0
global.follower_queue = ds_queue_create();