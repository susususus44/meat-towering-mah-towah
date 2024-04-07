scr_getinput()
if key_attack
{
	video_close()
	instance_destroy(obj_tip)
	room_goto(Mainmenu)
}
var _data = video_draw();
var _status = _data[0];
if (_status == 0)
	draw_surface(_data[1], 0, 0)