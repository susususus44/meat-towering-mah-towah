function scr_ini_savefile_save(argument0, argument1, argument2){
	if (global.file != 0)
	{
		ini_open(global.file)
		ini_write_real(argument0, argument1, argument2)
		ini_close()
		instance_create_layer(x, y, "Instances_1", obj_saveicon)
	}
}
function scr_ini_savefile_load(argument0, argument1, argument2){
	if (global.file != 0)
	{
	ini_open(global.file)
	ini_read_real(argument0, argument1, argument2)
	ini_close()
	}
}