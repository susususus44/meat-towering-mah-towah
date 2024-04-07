scr_getinput()
var _data = video_draw();
var data = video_get_status()
var _status = _data[0];
if (_status == 0)
	draw_surface(_data[1], 0, 0)
if (key_attack || data == video_status_paused) && !videoclosed
{
	videoclosed = 1
	video_close()
	instance_destroy(obj_tip)
	room_goto(Mainmenu)
}