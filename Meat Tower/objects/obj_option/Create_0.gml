if (instance_exists(obj_pause) && !obj_pause.opened)
	instance_destroy()
menu = ["BLOOD EFFECT", "FULLSCREEN", "MASTER VOLUME", "MUSIC VOLUME", "SOUND VOLUME", "MCPIGS BROTHER", "CONTROLS"]
menuselect = [(global.bloodenabled == 1 ? "ON" : "OFF"), (global.fullscreen == 1 ? "ON" : "OFF"), floor(global.vol * 100), floor(global.musicvol * 100), floor(global.audiovol * 100), (global.mcpigbrother == 1 ? "ON" : "OFF"), ""]
scr_soundeffect(sfx_menuwoosh)
selected = 0
menugui = 0
menugui1 = 100
backbuffer = 0
opened = 1
angle1 = 0
angle2 = 0
fade = 1
bgy = 0
bgx = 0
length = 0
ini_open("option")
musicvol = ini_read_real("options", "musicvolume", 1)
ini_close()
depth = -999
image_speed = 0.35
