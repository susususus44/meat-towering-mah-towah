// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_create_effect(argument0){
	with (instance_create(x, y, obj_fixedeffect)) {
		sprite_index = argument0
	}
}