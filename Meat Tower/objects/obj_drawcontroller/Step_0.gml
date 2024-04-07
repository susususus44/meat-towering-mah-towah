panicy = lerp(panicy, (global.panic == 1 && global.fill > 0 ? 150 : 0), 0.1)
if (global.panic)
	global.fill--
global.fill = clamp(global.fill, 0, 1000000)
if (global.panic == 1 && global.fill <= 0 && !instance_exists(obj_mcpigbrother) && global.mcpigbrother)
	instance_create(obj_player.x, obj_player.y, obj_mcpigbrother)
if (keyboard_check_pressed(vk_f3))
	global.fill = 0
fadeblack = Approach(fadeblack, (global.panic == 1 ? 0.5 : 0), 0.1)