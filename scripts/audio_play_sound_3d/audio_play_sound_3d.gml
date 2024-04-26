/// @desc Lets you play a sound at certian x and y coordinate
/// @param {any*} soundid 
/// @param {any*} priority 
/// @param {any*} loops
/// @param {any*} maxdis 
/// @param {any*} dropoff 
/// @param {any*} multiplier 
/// @returns {bool}
function audio_play_sound_3d(argument0, argument1, argument2, argument3 = obj_audiomanager.max_distance_to_be_heard, argument4 = obj_audiomanager.start_dropping_off_at, argument5 = obj_audiomanager.multiplier)
{
	return audio_play_sound_at(argument0, x, y, 0, argument3, argument4, argument5, argument2, argument1)
}