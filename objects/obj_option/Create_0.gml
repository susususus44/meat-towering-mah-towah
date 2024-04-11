if (instance_exists(obj_pause) && !obj_pause.opened)
	instance_destroy()
menu = []
array_push(menu, ["BLOOD EFFECT", "MCPIGS BROTHER"])
array_push(menu, ["FULLSCREEN", "VSYNC"])
array_push(menu, ["MASTER VOLUME", "MUSIC VOLUME", "SFX VOLUME"])
menuselect = []
array_push(menuselect, [(global.bloodenabled == 1 ? "ON" : "OFF"), (global.mcpigbrother == 1 ? "ON" : "OFF")])
array_push(menuselect, [(global.fullscreen == 1 ? "ON" : "OFF")])
array_push(menuselect, [floor(global.vol * 100), floor(global.musicvol * 100), floor(global.audiovol * 100)])
scr_soundeffect(sfx_menuwoosh)
sections = ["GAME", "VIDEO OPTIONS", "AUDIO OPTIONS"]
sectionselect = 0
selected = 0
menugui = 200
menugui1 = 100
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
