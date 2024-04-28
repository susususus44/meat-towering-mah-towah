with (instance_create(x, y, obj_particle))
{
	hsp = (2 * -image_xscale)
	vsp = -7
	sprite_index = spr_pigboulder_death
	image_angle = 0
	scr_blood_create(60)
	repeat (20)
		instance_create(x + 4 * image_xscale, y + irandom_range(-8, 8), obj_blood)
}
with (obj_camera)
{
	shake_mag = 5
	shake_mag_acc = 0.1
}