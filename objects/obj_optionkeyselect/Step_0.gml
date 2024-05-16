scr_getinput()
if (!instance_exists(obj_keyset)) {
move = -key_up2 + key_down2
draw++
backbuffer--
if (backbuffer < 1)
key_selected += move
key_selected = clamp(key_selected, 0, array_length(keys) - 1)
if (key_jump2 && backbuffer < 0)
{
	if key_selected == 7
	{
	instance_destroy()
	with (obj_option)
		backbuffer = 3
	}
	else
	{
switch (key_selected) {
    case 0:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.up;
        }
        break;
    case 1:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.down;
        }
        break;
    case 2:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.left;
        }
        break;
    case 3:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.right;
        }
        break;
    case 4:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.jump;
        }
        break;
    case 5:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.attack;
        }
        break;
    case 6:
        with (instance_create(x, y, obj_keyset, -251)) {
            state = keystates.knife;
        }
        break;
    // Add more cases if needed
}

	}
}
if (key_attack)
{
	instance_destroy()
	with (obj_option)
		backbuffer = 3
}
}