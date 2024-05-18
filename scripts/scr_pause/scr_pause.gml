function scr_pause_restart() {
    if (room != rm_hub && room != testroom) {
        ds_list_clear(global.saveroom)
        ds_list_clear(global.baddieroom)
        opened = 0
        audio_stop_all()
        instance_activate_all()
        obj_player1.targetDoor = global.doorrestartto
        obj_player1.state = states.comeoutdoor
        obj_player1.sprite_index = spr_player_comeoutdoor
        obj_player1.image_index = 0
        obj_player1.movespeed = 0
        room_goto(global.roomrestartto)
        global.panic = 0
    }
}

function scr_pause_options() {
    if !instance_exists(obj_option)
    instance_create_depth(x, y, depth, obj_option)
}

function scr_pause_resume() {
    if (sprite_exists(spr_custom))
        sprite_delete(spr_custom)
    audio_resume_all()
    audio_stop_sound(mu_pause)
    opened = 0
    instance_activate_all()
    with(obj_player) {
        PlayerSpr()
    }
}

function scr_pause_exit() {
    if (room != rm_hub && room != testroom) {
        ds_list_clear(global.saveroom)
        opened = 0
        audio_stop_all()
        instance_activate_all()
        obj_player1.state = states.comeoutdoor
        obj_player1.sprite_index = spr_player_comeoutdoor
        obj_player1.image_index = 0
        obj_player1.movespeed = 0
        obj_player1.exitlevel = 1
        room_goto(global.resettoroom)
        obj_player1.x = global.resettox
        obj_player1.y = global.resettoy
        global.panic = 0
    } else {
        instance_destroy(all, false)
        audio_stop_all()
        room_goto(Mainmenu)
        ds_list_clear(global.saveroom)
        opened = 0
    }
	instance_create(0, 0, obj_audiomanager)
	instance_create(0, 0, obj_saveicon)
    instance_destroy(obj_levelstart)
}