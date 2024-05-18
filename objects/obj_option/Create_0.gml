if (instance_exists(obj_pause) && !obj_pause.opened)
	instance_destroy()
menu = []
var arr = ["BLOOD EFFECT", "MCPIGS BROTHER", "STARTING INTRO", "SHADOWS", "CHARACTER", "RICH PRESENCE"]
if (room != Mainmenu)
	arr = ["BLOOD EFFECT", "MCPIGS BROTHER", "STARTING INTRO", "SHADOWS", "RICH PRESENCE"]
array_push(menu, arr)
array_push(menu, ["WINDOW MODE", "VSYNC"])
array_push(menu, ["MASTER VOLUME", "MUSIC VOLUME", "SFX VOLUME"])
array_push(menu, ["CHANGE CONTROLS"])
menuselect = []
array_push(menuselect, [(global.bloodenabled == 1 ? "ON" : "OFF"), (global.mcpigbrother == 1 ? "ON" : "OFF"), (global.intro == 1 ? "ON" : "OFF"), (global.shadows == 1 ? "ON" : "OFF"), (global.isnoisy == 1 ? spr_liveiconnoise : spr_liveicon), (global.richpresence == 1 ? "ON" : "OFF")])
array_push(menuselect, [(global.fullscreen == 1 ? "FULLSCREEN" : (global.fullscreen == 2 ? "BORDERLESS WINDOW" : "WINDOWED"))])
array_push(menuselect, [floor(global.vol * 100), floor(global.musicvol * 100), floor(global.audiovol * 100)])
array_push(menuselect, [""])
scr_soundeffect(sfx_menuwoosh)
move = 0
move1 = 0
backbuffer = 0
sections = ["GAME", "VIDEO OPTIONS", "AUDIO OPTIONS", "CONTROLS"]
sectionselect = 0
selected = 0
menugui = 0
menugui1 = 100
opened = 1
angle1 = 0
angle2 = 0
index = 0
bgy = 0
bgx = 0
length = 0
depth = -999
image_speed = 0.35
