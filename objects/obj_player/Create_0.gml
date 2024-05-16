pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);
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
	actor,
	timesup,
	bombjump,
	ladder,
}
global.levelname = ""
global.roomrestartto = 0
global.resettox = 0
global.resettoy = 0
global.resettoroom = 0
global.visiblecollisions = 0
global.fill = 0
global.panic = 0
global.respawnroom = 0
global.respawntox = 0
global.respawntoy = 0
global.roomrestartto = 0
global.doorrestartto = "A"
global.doorrestartto = "A"
global.saveroom = ds_list_create()
global.baddieroom = ds_list_create()
global.respawnroom = ds_list_create()
global.defaultfont = font_add_sprite_ext(spr_font, "abcdefghijklmnopqrstuvwxyz,.!?ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 1, 0)
global.bigfont = font_add_sprite_ext(spr_bigfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 1, 0)
global.titlecardfont = font_add_sprite_ext(spr_titlecardfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1, 0)
global.collectfont = font_add_sprite_ext(spr_collectfont, "1234567890", 0, -5)
lives = 3
healthpoints = 5
doublejump = false
landanim = false
actortimer = 0
isnoisy = 0
spymode = 0
machsnd = -4
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
coop = false;
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
instakill = false
knifethrown = false
playerpal = 1
depth = -999
scr_initinput()
scr_collision_init()
playerspr()
// very important functions above this line!!!!
