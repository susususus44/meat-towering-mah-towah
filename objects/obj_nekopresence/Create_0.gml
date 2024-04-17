/// @description Initialize Discord.
window_set_cursor(cr_hourglass);
#macro DISCORD_APP_ID "1210171602080104508"
ready = false;
userid = 0
index = 0
drawgui = true
global.roomname = "NekoPresence init"
alarm[0] = room_speed * 5;
image_speed = 0.35
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}