
global.grav = 0
global.collect = 0
angle = 0
width = 960
height = 540
zoom = 0.75
offsetx = 0
offsety = 0
hudspr = spr_hud
shake_mag = 0
shake_mag_acc = 0.1
camxsmooth = 0
hudy = 0
camysmooth = 0
collect = 0
erasing = 0
collectscale = 1
smoothcam = 0 //warning: shitty, made it in 50 seconds
ini_open("option")
global.vol = ini_read_real("options", "volume", 0);
ini_close()
volume = global.vol
image_speed = 0.35
surface_resize(application_surface, 960, 540)