y += (vsp)
x += (hsp * image_xscale)
if (place_meeting(x + 1, y, obj_solid))
	instance_destroy()
if place_meeting_slopeSolid(x, y)
	instance_destroy()
if (place_meeting(x, y, obj_platform) && vsp > 0)
	instance_destroy()
vsp += vspadd
