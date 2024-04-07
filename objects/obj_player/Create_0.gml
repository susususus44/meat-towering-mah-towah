enum states {
    normal,
    jump,
	bump,
	punch,
	slam,
	hurt,
	slide,
	mach,
	mach1,
	noclip,
	cling,
	crouch,
	crouchjump,
	machroll,
	door,
	comeoutdoor,
	uppunch,
	throwknife,
	machslide,
	dive,
	wallbounce,
	crusher,
}
global.visiblecollisions = 0
global.fill = 0
global.panic = 0
global.saveroom = ds_list_create()
global.baddieroom = ds_list_create()
global.doorrestartto = "A"
global.roomrestartto = 0
global.defaultfont = font_add_sprite_ext(spr_font, "abcdefghijklmnopqrstuvwxyz,.!?ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 1, 0)
global.bigfont = font_add_sprite_ext(spr_bigfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890#", 1, 0)
global.titlecardfont = font_add_sprite_ext(spr_titlecardfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1, 0)
global.collectfont = font_add_sprite_ext(spr_collectfont, "1234567890", 0, -5)
isnoisy = 0
hallway = 0
hallwaydir = 0
jumpstop = 0
rage = 0
flash = 0
momentum = 0
exitlevel = 0
charge = 0
shadowalpha = 0
hitbuffer = 0
coop = 0
xscale = 1
yscale = 1
rot = 1
alpha = 1
state = states.normal
movespeed = 0
resolution = 0
use_controls = 1
targetDoor = "A"
runjump = 0
machafterimage = 10
slamafterimage = 5
depth = -999
scr_initinput()
scr_collision_init()
playerspr()
// very important functions above this line!!!!
