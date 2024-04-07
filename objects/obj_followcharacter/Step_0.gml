var playerx = (obj_player.x - ((count * obj_player.xscale) * 50)) - (40 *obj_player1.xscale)
x = lerp(x, playerx, 0.1)
y = lerp(y, obj_player1.y - 50, 0.1)
if (obj_player1.hsp != 0)
	sprite_index = spr_move
else
	sprite_index = spr_idle
image_xscale = obj_player1.xscale