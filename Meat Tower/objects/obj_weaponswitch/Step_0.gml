timer--
key_tab = (scr_press(vk_tab) || gamepad_button_check_pressed(global.player_gamepad[0], gp_stickr))
if key_tab
{
	timer = 50
	switch (global.item)
	{
		case 0:
			global.item = 1
			break
		case 1:
			global.item = 0
			break
		default:
			global.item = 0
			break
	}
}
if timer >= 0
	fade = 1
else
	fade = Approach(fade, 0, 0.1)