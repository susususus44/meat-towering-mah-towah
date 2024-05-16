function scr_writeinputglobals() {
	//keyboard
	ini_open("options.ini") 
	var keybinds = ["key_left", "key_right", "key_up", "key_down", "key_jump", "key_attack", "key_run", "key_knife"]
	var keybindsdefault = [vk_left, vk_right, vk_up, vk_down, ord("Z"), ord("X"), vk_shift, ord("A")]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		ini_write_string("controls", keybinds[i], keybindsdefault[i])
	}
	//gamepad
	var keybinds = ["key_left_gamepad", "key_right_gamepad", "key_up_gamepad", "key_down_gamepad", "key_jump_gamepad", "key_attack_gamepad", "key_run_gamepad", "key_knife_gamepad"]
	var keybindsdefault = [gp_padl, gp_padr, gp_padu, gp_padd, gp_face1, gp_face3, gp_shoulderr, gp_face4]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		ini_write_string("controls", keybinds[i], keybindsdefault[i])
	}
	ini_close()
}

function scr_saveinput() {
	//keyboard
	ini_open("options.ini") 
	var keybinds = ["key_left", "key_right", "key_up", "key_down", "key_jump", "key_attack", "key_run", "key_knife"]
	var keybindsdefault = [global.key_leftC, global.key_rightC, global.key_upC, global.key_downC, global.key_jumpC, global.key_attackC, global.key_runC, global.key_knifeC]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		ini_write_string("controls", keybinds[i], keybindsdefault[i])
	}
	//gamepad
	var keybinds = ["key_left_gamepad", "key_right_gamepad", "key_up_gamepad", "key_down_gamepad", "key_jump_gamepad", "key_attack_gamepad", "key_run_gamepad", "key_knife_gamepad"]
	var keybindsdefault = [global.key_leftG, global.key_rightG, global.key_upG, global.key_downG, global.key_jumpG, global.key_attackG, global.key_runG, global.key_knifeG]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		ini_write_string("controls", keybinds[i], keybindsdefault[i])
	}
	ini_close()
}

function scr_initinputglobals() {
	ini_open("options.ini") 
	//keyboard
	global.key_leftC = ini_read_string("controls", "key_left", vk_left)
	global.key_rightC = ini_read_string("controls", "key_right", vk_right)
	global.key_upC = ini_read_string("controls", "key_up", vk_up)
	global.key_downC = ini_read_string("controls", "key_down", vk_down)
	global.key_jumpC = ini_read_string("controls", "key_jump", ord("Z"))
	global.key_attackC = ini_read_string("controls", "key_attack", ord("X"))
	global.key_runC = ini_read_string("controls", "key_run", vk_shift)
	global.key_knifeC = ini_read_string("controls", "key_knife", ord("A"))
	//gamepad
	global.key_leftG = ini_read_string("controls", "key_left_gamepad", gp_padl)
	global.key_rightG = ini_read_string("controls", "key_right_gamepad", gp_padr)
	global.key_upG = ini_read_string("controls", "key_up_gamepad", gp_padu)
	global.key_downG = ini_read_string("controls", "key_down_gamepad", gp_padd)
	global.key_jumpG = ini_read_string("controls", "key_jump_gamepad", gp_face1)
	global.key_attackG = ini_read_string("controls", "key_attack_gamepad", gp_face3)
	global.key_runG = ini_read_string("controls", "key_run_gamepad", gp_shoulderr)
	global.key_knifeG = ini_read_string("controls", "key_knife_gamepad", gp_face4)
	ini_close()
}
function scr_holding(argument0){
	return keyboard_check(argument0)
}
function scr_press(argument0){
	return keyboard_check_pressed(argument0)
}
function scr_initinput(){
	player_input_device[0] = 0
	key_left = 0
	key_left2 = 0
	key_right = 0
	key_right2 = 0
	key_up = 0
	key_up2 = 0
	key_down = 0
	key_down2 = 0
	key_jump = 0
	key_jump2 = 0
	key_run = 0
	key_run2 = 0
	key_attack = 0
	key_attack2 = 0
	key_knife = 0
	key_knife2 = 0
	for (var i = 0; i < gamepad_get_device_count(); i++)
	{
		if gamepad_is_connected(i)
		{
			player_input_device[0] = i
		}
	}
	global.player_gamepad[0] = player_input_device[0]
	scr_initinputglobals()
}
function scr_getinput(){
	key_left = -(keyboard_check(global.key_leftC) || gamepad_button_check(global.player_gamepad[0], global.key_leftG))
	key_left2 = -(keyboard_check_pressed(global.key_leftC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_leftG))
	key_right = (keyboard_check(global.key_rightC) || gamepad_button_check(global.player_gamepad[0], global.key_rightG))
	key_right2 = (keyboard_check_pressed(global.key_rightC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_rightG))
	key_up = (keyboard_check(global.key_upC) || gamepad_button_check(global.player_gamepad[0], global.key_upG))
	key_up2 = (keyboard_check_pressed(global.key_upC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_upG))
	key_down = (keyboard_check(global.key_downC) || gamepad_button_check(global.player_gamepad[0], global.key_downG))
	key_down2 = (keyboard_check_pressed(global.key_downC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_downG))
	key_jump = (keyboard_check(global.key_jumpC) || gamepad_button_check(global.player_gamepad[0], global.key_jumpG))
	key_jump2 = (keyboard_check_pressed(global.key_jumpC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_jumpG))
	key_run = (keyboard_check(global.key_runC) || gamepad_button_check(global.player_gamepad[0], global.key_runG))
	key_run2 = (keyboard_check_pressed(global.key_runC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_runG))
	key_attack = (keyboard_check(global.key_attackC) || gamepad_button_check(global.player_gamepad[0], global.key_attackG))
	key_attack2 = (keyboard_check_pressed(global.key_attackC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_attackG))
	key_knife = (keyboard_check(global.key_knifeC) || gamepad_button_check(global.player_gamepad[0], global.key_knifeG))
	key_knife2 = (keyboard_check_pressed(global.key_knifeC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_knifeG))
	key_start = (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(global.player_gamepad[0], gp_start))
}
function scr_getinput2(){
	key_left = -scr_holding(ord("A"))
	key_left2 = -scr_press(ord("A"))
	key_right = scr_holding(ord("D"))
	key_right2 = scr_press(ord("D"))
	key_up = scr_holding(ord("W"))
	key_up2 = scr_press(ord("W"))
	key_down = scr_holding(ord("S"))
	key_down2 = scr_press(ord("S"))
	key_jump = scr_holding(ord("J"))
	key_jump2 = scr_press(ord("J"))
	key_run = scr_holding(ord("H"))
	key_run2 = scr_press(ord("H"))
	key_attack = scr_holding(ord("K"))
	key_attack2 = scr_press(ord("K"))
	key_knife = scr_holding(ord("P"))
	key_knife2 = scr_press(ord("P"))
}

function scr_updateoptionskeys() {
	with (obj_optionkeyselect)
	{
backbuffer = 3
keys = []
array_push(keys, ["UP", global.key_upC])
array_push(keys, ["DOWN", global.key_downC])
array_push(keys, ["LEFT", global.key_leftC])
array_push(keys, ["RIGHT", (global.key_rightC)])
array_push(keys, ["JUMP", (global.key_jumpC)])
array_push(keys, ["ATTACK", (global.key_attackC)])
array_push(keys, ["SECONDARY ATTACK", (global.key_knifeC)])
array_push(keys, ["EXIT", ("PRESS JUMP")])
	}
}