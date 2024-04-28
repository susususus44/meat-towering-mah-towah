scr_collision_init()
bloodcooldown = 0
done = false
image_speed = 0
randomspin = irandom_range(-1, 1)
sprite_index = choose(spr_blooddone, spr_blood)
image_index = irandom_range(0, image_number-1)
vspadd = irandom_range(0.8, 2);
vsp = irandom_range(-1, -12);
hsp = irandom_range(-7, 7);
grav = irandom_range(0.3, 0.5);
depth = -500