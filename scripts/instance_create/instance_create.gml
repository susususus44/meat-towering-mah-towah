function instance_create(argument0, argument1, argument2){
	return instance_create_depth(argument0, argument1, obj_player.depth - 1, argument2)
}