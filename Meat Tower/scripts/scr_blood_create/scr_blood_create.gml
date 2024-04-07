function scr_blood_create(argument0){
	if (global.bloodenabled)
	{
		repeat (argument0)
			instance_create_depth(x, y, depth - 1, obj_blood)
	}
}