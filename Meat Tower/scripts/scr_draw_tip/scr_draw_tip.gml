function scr_draw_tip(argument0){
	instance_destroy(obj_tip)
	with (instance_create_layer(0, 0, "Instances_1", obj_tip)) {
		tip = argument0
	}
}