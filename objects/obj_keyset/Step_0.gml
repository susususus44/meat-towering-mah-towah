upbuffer--
if (keyboard_check_pressed(vk_anykey) && upbuffer < 0)
{
	switch state {
		case keystates.up:
			global.key_upC = keyboard_key
			break;
		case keystates.left:
			global.key_leftC = keyboard_key
			break;
case keystates.right:
    global.key_rightC = keyboard_key;
    break;
case keystates.down:
    global.key_downC = keyboard_key;
    break;
case keystates.attack:
    global.key_attackC = keyboard_key;
    break;
case keystates.jump:
    global.key_jumpC = keyboard_key;
    break;
case keystates.knife:
    global.key_knifeC = keyboard_key;
    break;

	}
	scr_updateoptionskeys()
	scr_saveinput()
	instance_destroy()
}