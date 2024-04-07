function scr_holding(argument0){
	return keyboard_check(argument0)
}
function scr_press(argument0){
	return keyboard_check_pressed(argument0)
}
function scr_initinputglobals() {
	ini_open("option")
	var keybinds = ["key_left", "key_right", "key_up", "key_down", "key_jump", "key_run", "key_attack", "key_knife"]
	var keybindsdefault = [vk_left, vk_right, vk_up, vk_down, ord("Z"), vk_shift, ord("X"), ord("A")]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		if (!ini_key_exists("controls", keybinds[i]))
			ini_write_real("controls", keybinds[i], keybindsdefault[i])
	}
	global.key_leftC = ini_read_real("controls", "key_left", vk_left)
	global.key_rightC = ini_read_real("controls", "key_right", vk_right)
	global.key_upC = ini_read_real("controls", "key_up", vk_up)
	global.key_downC = ini_read_real("controls", "key_down", vk_down)
	global.key_jumpC = ini_read_real("controls", "key_jump", ord("Z"))
	global.key_runC = ini_read_real("controls", "key_run", vk_shift)
	global.key_attackC = ini_read_real("controls", "key_attack", ord("X"))
	global.key_knifeC = ini_read_real("controls", "key_knife", ord("A"))
	ini_close()
}
function scr_initinput(){
	scr_initinputglobals()
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
}
function scr_getinput(){
	key_left = -(keyboard_check(global.key_leftC) || gamepad_button_check(global.player_gamepad[0], gp_padl))
	key_left2 = -(keyboard_check_pressed(global.key_leftC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_padl))
	key_right = (keyboard_check(global.key_rightC) || gamepad_button_check(global.player_gamepad[0], gp_padr))
	key_right2 = (keyboard_check_pressed(global.key_rightC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_padl))
	key_up = (keyboard_check(global.key_upC) || gamepad_button_check(global.player_gamepad[0], gp_padu))
	key_up2 = (keyboard_check_pressed(global.key_upC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_padu))
	key_down = (keyboard_check(global.key_downC) || gamepad_button_check(global.player_gamepad[0], gp_padd))
	key_down2 = (keyboard_check_pressed(global.key_downC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_padd))
	key_jump = (keyboard_check(global.key_jumpC) || gamepad_button_check(global.player_gamepad[0], gp_face1))
	key_jump2 = (keyboard_check_pressed(global.key_jumpC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_face1))
	key_run = (keyboard_check(global.key_runC) || gamepad_button_check(global.player_gamepad[0], gp_shoulderrb))
	key_run2 = (keyboard_check_pressed(global.key_runC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_shoulderrb))
	key_attack = (keyboard_check(global.key_attackC) || gamepad_button_check(global.player_gamepad[0], gp_face3))
	key_attack2 = (keyboard_check_pressed(global.key_attackC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_face3))
	key_knife = (keyboard_check(global.key_knifeC) || gamepad_button_check(global.player_gamepad[0], gp_face4))
	key_knife2 = (keyboard_check_pressed(global.key_knifeC) || gamepad_button_check_pressed(global.player_gamepad[0], gp_face4))
	key_start = (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(global.player_gamepad[0], gp_start))
}
function scr_getinput2(){
	key_left = -keyboard_check(ord("A"))
	key_left2 = -keyboard_check_pressed(ord("A"))
	key_right = keyboard_check(ord("D"))
	key_right2 = keyboard_check_pressed(ord("D"))
	key_up = keyboard_check(ord("W"))
	key_up2 = keyboard_check_pressed(ord("W"))
	key_down = keyboard_check(ord("S"))
	key_down2 = keyboard_check_pressed(ord("S"))
	key_jump = keyboard_check(ord("J"))
	key_jump2 = keyboard_check_pressed(ord("J"))
	key_run = keyboard_check(ord("H"))
	key_run2 = keyboard_check_pressed(ord("H"))
	key_attack = keyboard_check(ord("K"))
	key_attack2 = keyboard_check_pressed(ord("K"))
	key_knife = keyboard_check(ord("P"))
	key_knife2 = keyboard_check_pressed(ord("P"))
}