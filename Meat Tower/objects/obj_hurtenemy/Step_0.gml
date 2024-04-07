scr_collision()
hsp = 2 * xscale
if (place_meeting(x + 1, y, obj_solid)) {
	x -= 4
	xscale *= -1
}
if (place_meeting(x - 1, y, obj_solid)) {
	xscale *= -1
	x += 4
}
