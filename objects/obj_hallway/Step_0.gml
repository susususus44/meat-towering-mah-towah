if (place_meeting(x,y,obj_doorA))
    targetDoor = "A"
if (place_meeting(x,y,obj_doorB))
    targetDoor = "B"
if (place_meeting(x, y, obj_player))
{
	goingto = 1
    if !instance_exists(obj_fadeout)
    {
        with (instance_place(x, y, obj_player))
        {
            hallway = 1
            hallwaydir = sign(other.image_xscale)
            targetDoor = other.targetDoor
        }
        instance_create(x, y, obj_fadeout)
    }
}
if (goingto && obj_fadeout.fadein)
{
	room_goto(targetRoom)
}