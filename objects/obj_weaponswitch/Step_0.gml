timer--
key_tab = (keyboard_check_pressed(vk_tab) || gamepad_button_check_pressed(global.player_gamepad[0], gp_stickr))
if key_tab
{
	timer = 50
	switch (global.item)
	{
		case 0:
			global.item = 1
			sprite_index = spr_pigboxknife_switch
			image_index = 0
			break
		case 1:
			global.item = 0
			sprite_index = spr_pigboxbomb_switch
			image_index = 0
			break
		default:
			global.item = 0
			break
	}
}
if (floor(image_index) == image_number - 1 && sprite_index == spr_pigboxknife_switch)
	sprite_index = spr_pigboxbomb_idle
if (floor(image_index) == image_number - 1 && sprite_index == spr_pigboxbomb_switch)
	sprite_index = spr_pigboxknife_idle
if timer >= 0
	fade = 1
else
	fade = Approach(fade, 0, 0.1)