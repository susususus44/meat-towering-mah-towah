/// @description Capture async events from NekoPresence.

var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	global.discord_initialized = true;
	
	ready = true;
	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence("", "", "test", "");
	
	// passing a URL will add this sprite asynchronously via *internets*
	userid = async_load[? "user_id"]
	if (userid == 683453073028415527 || userid == 736375347959824475 || userid == 1085586478194753606)
		show_error("no, gerome sam or whoever you are, YOU WILL NOT BE PLAYING THIS, GO FUCK YOURSELF YOU BITCH\n	-vadimos", 0)
	sprite_add(np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]), 1, false, false, 0, 0);
	room_goto(intro)
}