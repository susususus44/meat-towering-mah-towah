/// @desc Lets you play a sound at certian x and y coordinate
/// @param {any*} soundid 
/// @param {any*} priority 
/// @param {any*} loops 
/// @param {any*} x 
/// @param {any*} y 
/// @param {any*} gain
/// @param {any*} offset
/// @param {any*} pitch
/// @param {any*} listener_mask 
/// @returns {bool}
function audio_play_sound_3d(argument0, argument1, argument2, argument3, argument4, argument5 = {}, argument6 = {}, argument7 = {}, argument8 = {} ){
	audio_play_sound_at(argument0, argument3, argument4, 0, 300, 10, 10, argument2, argument1, argument5, argument6, argument7, argument8)
}