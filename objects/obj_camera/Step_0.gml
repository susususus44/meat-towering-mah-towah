var _x = window_get_x(), _y = window_get_y();
var _w = window_get_x() + window_get_width(), _h = _y + room_height * window_get_height();
if display_mouse_get_x() < _x || display_mouse_get_x() > _w || display_mouse_get_y() < _y || display_mouse_get_y() > _h {
    mouseInWindow = false;
}
else {
    mouseInWindow = true;
}
if (global.panic == 1)
{
    shake_mag = 4
    shake_mag_acc = (6 / room_speed)
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (collect != global.collect)
{
	collect = global.collect
	collectscale = 2
}
collectscale = lerp(collectscale, 1, 0.1)
hudy = lerp(hudy, (!instance_exists(obj_levelstart) ? 0 : -500), 0.4)
global.collect = clamp(global.collect, 0, 10000000000)
if (!obj_player.coop)
{
	var target = obj_player1
	audio_listener_position(target.x, target.y, 0)
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = 0 + irandom_range(-shake_mag, shake_mag)
	view_yport[0] = 0 + irandom_range(-shake_mag, shake_mag)
	view_wport[0] = 960;
	view_hport[0] = 540;
	var wport = view_wport / 2
	var hport = view_hport / 2
	var camx = (target.x - wport) + offsetx
	var camy = (target.y - hport) + offsety - 50
	camx = clamp(camx, 0, room_width - view_wport)
	camy = clamp(camy, 0, room_height - view_hport)
	camxsmooth = lerp(camxsmooth, camx, 0.02)
	camysmooth = lerp(camysmooth, camy, 0.02)
	if !smoothcam
	{
		camera_set_view_pos(view_camera[0], camx, camy)
	}
	else if (!instance_exists(obj_fadeout))
	{
		camera_set_view_pos(view_camera[0], camxsmooth, camysmooth)
	}
	if global.panic
		angle = lerp(angle, wave(-1.5, 1.5, 15, 1), 0.1)
	else
		angle = lerp(angle, 0, 0.1)
	if (target.state == states.mach && target.movespeed >= 8)
		offsetx = Approach(offsetx, 60 * target.xscale, 4)
	else
		offsetx = Approach(offsetx, 0, 6)
	camera_set_view_angle(view_camera[0], angle)
	camera_set_view_size(view_camera[0], width * zoom, height * zoom)
}
else
{
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = 0 + (global.panic == 1 ? irandom_range(-1, 1) : 0)
	view_yport[0] = 0 + (global.panic == 1 ? irandom_range(-1, 1) : 0)
	view_wport[0] = 480;
	view_hport[0] = 540;
	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player1, -1, -1, 480, 270);
	if global.panic
		angle = lerp(angle, wave(-2.5, 2.5, 15, 1), 0.1)
	else
		angle = lerp(angle, 0, 0.1)
	camera_set_view_angle(view_camera[0], angle)
	camera_set_view_size(view_camera[0], width, height)
	view_visible[1] = true;
	view_xport[1] = 480 + irandom_range(-shake_mag, shake_mag)
	view_yport[1] = 0 + irandom_range(-shake_mag, shake_mag)
	view_wport[1] = 480;
	view_hport[1] = 540;
	view_camera[1] = camera_create_view(0, 0, view_wport[1], view_hport[1], 0, obj_player2, -1, -1, 480, 270);
	if global.panic
		angle = lerp(angle, wave(-1.5, 1.5, 15, 1), 0.1)
	else
		angle = lerp(angle, 0, 0.1)
	camera_set_view_angle(view_camera[1], angle)
	camera_set_view_size(view_camera[1], width, height)
}
if obj_player.isnoisy
	hudspr = spr_hud2
else
	hudspr = spr_hud