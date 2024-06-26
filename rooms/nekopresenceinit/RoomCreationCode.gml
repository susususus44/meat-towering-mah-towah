ini_open("options.ini")
global.richpresence = ini_read_real("options", "richpresence", 1)
global.vol = ini_read_real("options", "volume", 1);
global.musicvol = ini_read_real("options", "musicvolume", 1);
global.audiovol = ini_read_real("options", "soundvolume", 1);
global.fullscreen = ini_read_real("options", "fullscreen", 0);
global.bloodenabled = ini_read_real("options", "blood", 1);
global.item = ini_read_real("options", "item", 0)
global.mcpigbrother = ini_read_real("options", "mcpigsbrother", 1)
global.vsync = ini_read_real("options", "vsync", 1)
global.intro = ini_read_real("options", "intro", 1)
global.shadows = ini_read_real("options", "shadows", 1)
global.windowscale = ini_read_real("options", "windowscale", 1)
global.isnoisy = ini_read_real("options", "isnoisy", 0)
window_set_size(960 * global.windowscale, 540 * global.windowscale)
window_set_fullscreen(global.fullscreen)
audio_master_gain(global.vol);
ini_close()
scr_initinputglobals()
global.panic = false
global.debug = false
global.amountoftoppins = 0
global.file = 0
global.follower_queue = ds_queue_create();
show_debug_overlay(global.debug)
if (global.intro)
	room_goto(Logo)
else
	room_goto(Mainmenu)