/// @desc Lets you play a sound at certian x and y coordinate
/// @param {any*} soundid 
/// @param {any*} priority 
/// @param {any*} loops 
/// @returns {bool}
function audio_play_sound_3d(argument0, argument1, argument2)
{
	return audio_play_sound_at(argument0, x, y, 0, obj_audiomanager.max_distance_to_be_heard, obj_audiomanager.start_dropping_off_at, obj_audiomanager.multiplier, argument2, argument1)
}