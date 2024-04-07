// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_create_particle(argument0, argument1){
	with (instance_create_layer(x, y, "Instances_1", obj_particle)) {
		sprite_index = argument0
	}
}