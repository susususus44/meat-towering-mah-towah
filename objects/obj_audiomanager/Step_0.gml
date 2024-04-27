if !audio_group_is_loaded(audiogroup_music)
	audio_group_load(audiogroup_music)
audio_group_set_gain(audiogroup_music, global.musicvol - (musicmute * global.musicvol), 0)
audio_group_set_gain(audiogroup_default, global.audiovol, 0)
audio_master_gain(global.vol)
if (instance_exists(obj_player1))
{
	audio_listener_position(obj_player1.x, obj_player1.y, 0)
}
if (instance_exists(obj_player1) && obj_player1.sprite_index == obj_player.spr_entergate)
	musicmute = Approach(musicmute, 1, 0.01)
else
	musicmute = 0
audio_listener_orientation(0, 1, 0, 0, 0, 1)