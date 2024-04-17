if (!active)
{
	active = 1
	global.respawntoroom = room
	global.respawntox = other.x
	global.respawntoy = other.y
	sprite_index = spr_checkpoint_activating
	ds_list_add(global.respawnroom, id)
}