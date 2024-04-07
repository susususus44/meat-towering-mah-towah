with (instance_create(x, y, obj_pigboulder_rolling))
{
	image_xscale = other.image_xscale
}
with (instance_create(x, y, obj_particle))
{
	hsp = (2 * -image_xscale)
	vsp = -7
	sprite_index = spr_pigboulder_debris
	image_angle = 0
}