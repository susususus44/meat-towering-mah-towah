scr_collision_init()
xscale = image_xscale
rot = 0
yscale = image_yscale
alpha = 1
depth = -500
grav = 0.3
instance_create(x, y, obj_enemyhurtbox)
if (instance_exists(obj_enemyhurtbox))
obj_enemyhurtbox.baddieid = id
