y += (vsp)
x += (hsp * image_xscale)
if (place_meeting(x, y, obj_solid))
	instance_destroy()
if place_meeting_slopeSolid(x, y)
	instance_destroy()
vsp += vspadd
image_angle++