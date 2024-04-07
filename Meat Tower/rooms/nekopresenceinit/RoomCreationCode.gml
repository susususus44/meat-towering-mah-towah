ini_open("option")
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
global.amountoftoppins = 0
global.file = 0
global.defaultfont = font_add_sprite_ext(spr_font, "abcdefghijklmnopqrstuvwxyz,.!?ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 1, 0)
global.bigfont = font_add_sprite_ext(spr_bigfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 1, 0)
global.titlecardfont = font_add_sprite_ext(spr_titlecardfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1, 0)