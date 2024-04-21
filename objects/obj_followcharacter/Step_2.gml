ds_queue_enqueue(followqueue, obj_player1.x)
ds_queue_enqueue(followqueue, obj_player1.y - 2)
ds_queue_enqueue(followqueue, obj_player1.hsp)
if (abs((x - obj_player1.x)) > 30)
    image_xscale = sign((obj_player1.x - x))
offsetx = Approach(offsetx, (35 * count * obj_player1.xscale), 5)
if (ds_queue_size(followqueue) > (lag_step * 3))
{
    x = lerp(x, (ds_queue_dequeue(followqueue) - (image_xscale * 4)) - offsetx, 0.2)
    y = lerp(y, (ds_queue_dequeue(followqueue) + 2), 0.7)
	sprite_index = (ds_queue_dequeue(followqueue) != 0 ? spr_move : spr_idle)
}