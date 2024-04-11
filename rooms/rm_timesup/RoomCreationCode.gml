audio_play_sound(mu_gameover, 1, false)
with (obj_player)
{
	state = states.timesup
	sprite_index = spr_player_deathstart
	image_index = 0
}