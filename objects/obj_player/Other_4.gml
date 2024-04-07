if (!exitlevel)
{
if (targetDoor == "A" && instance_exists(obj_doorA))
{
    if (hallway == 0)
    {
        x = (obj_doorA.x + 16)
        y = (obj_doorA.y - 14)
    }
    else if hallway == 1
    {
        x = (obj_doorA.x + 60 * hallwaydir)
        y = (obj_doorA.y - 14)
    }
}
if (targetDoor == "B" && instance_exists(obj_doorB))
{
    if (hallway == 0)
    {
        x = (obj_doorB.x + 16)
        y = (obj_doorB.y - 14)
    }
    else if hallway == 1
    {
        x = (obj_doorB.x + 60 * hallwaydir)
        y = (obj_doorB.y - 14)
    }
}
}
with (obj_revive)
{
    x = other.x
    y = other.y
}
exitlevel = 0
// again thank you vadimo for the code