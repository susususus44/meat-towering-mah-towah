if active
{
	with obj_door
		instance_destroy()
	with obj_pillarig
		instance_destroy()
}
if !active && room != meat_travel_test
	instance_destroy(obj_meattraveldoor)