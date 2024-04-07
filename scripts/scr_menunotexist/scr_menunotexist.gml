function scr_menunotexist(){
	var exist = !instance_exists(obj_option) && !instance_exists(obj_fileselect)
	return exist
}