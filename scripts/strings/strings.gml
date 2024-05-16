function translate_keycode(key) {
    var ret;
	if (key != "PRESS JUMP")
    switch (key) {
        case 8:
            ret = "BACKSPACE";
            break;
        case 9:
            ret = "TAB";
            break;
        case 13:
            ret = "ENTER";
            break;
        case 16:
            ret = "SHIFT";
            break;
        case 17:
            ret = "CTRL";
            break;
        case 18:
            ret = "ALT";
            break;
        case 19:
            ret = "PAUSE/BREAK";
            break;
        case 20:
            ret = "CAPS LOCK";
            break;
        case 27:
            ret = "ESCAPE";
            break;
        case 32:
            ret = "SPACE";
            break;
        case 33:
            ret = "PAGE UP";
            break;
        case 34:
            ret = "PAGE DOWN";
            break;
        case 35:
            ret = "END";
            break;
        case 36:
            ret = "HOME";
            break;
        case 37:
            ret = "LEFT ARROW";
            break;
        case 38:
            ret = "UP ARROW";
            break;
        case 39:
            ret = "RIGHT ARROW";
            break;
        case 40:
            ret = "DOWN ARROW";
            break;
        case 46:
            ret = "DELETE";
            break;
        case 48:
            ret = "0";
            break;
        case 49:
            ret = "1";
            break;
        case 50:
            ret = "2";
            break;
        case 51:
            ret = "3";
            break;
        case 52:
            ret = "4";
            break;
        case 53:
            ret = "5";
            break;
        case 54:
            ret = "6";
            break;
        case 55:
            ret = "7";
            break;
        case 56:
            ret = "8";
            break;
        case 57:
            ret = "9";
            break;
        case 65:
            ret = "A";
            break;
        case 66:
            ret = "B";
            break;
        case 67:
            ret = "C";
            break;
        case 68:
            ret = "D";
            break;
        case 69:
            ret = "E";
            break;
        case 70:
            ret = "F";
            break;
        case 71:
            ret = "G";
            break;
        case 72:
            ret = "H";
            break;
        case 73:
            ret = "I";
            break;
        case 74:
            ret = "J";
            break;
        case 75:
            ret = "K";
            break;
        case 76:
            ret = "L";
            break;
        case 77:
            ret = "M";
            break;
        case 78:
            ret = "N";
            break;
        case 79:
            ret = "O";
            break;
        case 80:
            ret = "P";
            break;
        case 81:
            ret = "Q";
            break;
        case 82:
            ret = "R";
            break;
        case 83:
            ret = "S";
            break;
        case 84:
            ret = "T";
            break;
        case 85:
            ret = "U";
            break;
        case 86:
            ret = "V";
            break;
        case 87:
            ret = "W";
            break;
        case 88:
            ret = "X";
            break;
        case 89:
            ret = "Y";
            break;
        case 90:
            ret = "Z";
            break;
        case 112:
            ret = "F1";
            break;
        case 113:
            ret = "F2";
            break;
        case 114:
            ret = "F3";
            break;
        case 115:
            ret = "F4";
            break;
        case 116:
            ret = "F5";
            break;
        case 117:
            ret = "F6";
            break;
        case 118:
            ret = "F7";
            break;
        case 119:
            ret = "F8";
            break;
        case 120:
            ret = "F9";
            break;
        case 121:
            ret = "F10";
            break;
        case 122:
            ret = "F11";
            break;
        case 123:
            ret = "F12";
            break;
        default:
            ret = "UNKNOWN";
			break;
	}
	else
		return key;
	return ret;
}

function insertinputs(argument0)
{
	var str = argument0
	string_replace(str, "[J]", translate_keycode(global.key_jumpC))
	string_replace(str, "[X]", translate_keycode(global.key_attackC))
	string_replace(str, "[A]", translate_keycode(global.key_knifeC))
	string_replace(str, "[u]", translate_keycode(global.key_upC))
	string_replace(str, "[d]", translate_keycode(global.key_downC))
	string_replace(str, "[a]", translate_keycode(global.key_leftC))
	string_replace(str, "[r]", translate_keycode(global.key_rightC))
	return str;
}