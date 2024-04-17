if (distance_to_object(obj_player1) < 20)
{
	gotoplayer = true
}
if (gotoplayer)
{
	var dir = point_direction(x, y, obj_player1.x, obj_player1.y)
	x += lengthdir_x(maxspeed, dir)
	y += lengthdir_y(maxspeed, dir)
	maxspeed += 0.9
}
