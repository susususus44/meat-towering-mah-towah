/// @param x
/// @param y
/// @param object
/// @param depth
function instance_create(argument0, argument1, argument2, argument3 = {}) {
	if (argument3 == undefined)
		argument3 = -125
	return instance_create_depth(argument0, argument1, argument3, argument2)
}