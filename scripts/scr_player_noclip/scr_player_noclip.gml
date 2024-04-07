function scr_player_noclip(){
    visible = true
    image_blend = c_white
    var _spd = 6
    if key_run
        _spd = 10
    x += ((key_left + key_right) * _spd)
    y += ((-((key_up - key_down))) * _spd)
    image_speed = 1
    sprite_index = spr_player_idle
    if (key_jump || key_attack2)
    {
        image_speed = 0.35
        state = states.normal
    }
}