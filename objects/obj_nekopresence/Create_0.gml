/// @description Initialize Discord.
ini_open("options.ini")
global.richpresence = ini_read_real("options", "richpresence", 1)
ini_close()
if (!global.richpresence)
	instance_destroy()
window_set_cursor(cr_hourglass);
#macro DISCORD_APP_ID "1210171602080104508"
ready = false;
userid = 0
index = 0
drawgui = true
alarm[0] = room_speed * 5;
image_speed = 0.35
depth = -200
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}