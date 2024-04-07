function scr_playerN_crusher() //gml_Script_scr_playerN_crusher
{
    move = (key_left + key_right)
    hsp = Approach(hsp, 0, 0.12)
    if (move != 0)
        xscale = move
    if (sprite_index != spr_playerN_noisecrusherstart)
        vsp++
    if place_meeting((x + (1 * xscale)), (y + 14), obj_destroyable)
    {
        with (instance_place((x + (1 * xscale)), (y + 14), obj_destroyable))
            instance_destroy()
    }
    if place_meeting((x + (1 * xscale)), (y + 14), obj_destroyable1)
    {
        with (instance_place(x, (y + 14), obj_destroyable))
            instance_destroy()
    }
    if place_meeting((x + (1 * xscale)), (y + 14), obj_metalblock)
    {
        with (instance_place(x, (y + 14), obj_metalblock))
            instance_destroy()
    }
    if (sprite_index == spr_playerN_noisecrusherland && floor(image_index) == (image_number - 1))
        state = (0 << 0)
    if (sprite_index == spr_playerN_noisecrusherstart && floor(image_index) == (image_number - 1))
        sprite_index = spr_playerN_noisecrusherfall
    if (grounded && sprite_index != spr_playerN_noisecrusherland)
    {
        with (instance_create((x - 80), y, obj_effect))
        {
            sprite_index = spr_noisegrounddasheffect
            image_speed = 0.4
        }
        with (instance_create((x + 80), y, obj_effect))
        {
            sprite_index = spr_noisegrounddasheffect
            image_speed = 0.4
            image_xscale = -1
        }
        scr_soundeffect(bang)
        image_index = 0
        hsp = 0
        sprite_index = spr_playerN_noisecrusherland
    }
    if key_attack2
    {
        sprite_index = spr_playerN_sidewayspin
        audio_play_sound(sfx_door, 1, false)
        movespeed = 8
        vsp = -3
        state = (7 << 0)
    }
}

function checkplayercrusher() //gml_Script_checkplayercrusher
{
    if (key_up && key_jump && (!grounded) && isnoisy)
    {
        sprite_index = spr_playerN_noisecrusherstart
        image_speed = 0.35
        image_index = 0
        vsp = -15
        scr_soundeffect(whack)
        state = (20 << 0)
    }
}
function scr_playerN_bounce() //da-da boing
{
    move = (key_left + key_right)
    hsp = (movespeed * xscale)
    movespeed = 8
    if key_attack2
    {
        sprite_index = spr_playerN_sidewayspin
        audio_play_sound(sfx_door, 1, false)
        movespeed = 8
        vsp = -3
        state = (7 << 0)
    }
    if (floor(image_index) == (image_number - 1))
        scr_soundeffect(spin_sound)
    if (move != 0)
        xscale = move
    else if move == 0
        hsp = Approach(hsp, 0, 0.75)
    image_speed = 0.4
    if (sprite_index == spr_playerN_wallbounce)
    {
        if key_down
            sprite_index = spr_playerN_divebomb
        if grounded
        {
            sprite_index = spr_mach
            movespeed = 8
            with (instance_create(x, y, obj_effect))
            {
                sprite_index = spr_noisegrounddasheffect
                image_xscale = other.xscale
            }
            state = (7 << 0)
        }
    }
    if (sprite_index == spr_playerN_divebomb || sprite_index == spr_playerN_divebombland || sprite_index == spr_playerN_divebombfall)
    {
        vsp = 20
        image_speed = 0.5
        if (place_meeting((x + xscale), (y - 16), obj_solid) && grounded && (!(place_meeting((x + xscale), y, obj_solid))))
        {
            state = (12 << 0)
            sprite_index = spr_machroll
            mask_index = spr_player_crouchmask
            image_speed = 0.35
            image_index = 0
        }
        if grounded
        {
            image_speed = 1
            if (!key_down)
            {
                sprite_index = spr_playerN_wallbounce
                with (instance_create(x, y, obj_effect))
                {
                    sprite_index = spr_noisewalljumpeffect
                    image_speed = 0.4
                }
                scr_soundeffect(boing)
                vsp = -6
            }
            if (sprite_index == spr_playerN_divebombfall)
                sprite_index = spr_playerN_divebombland
        }
        if (!grounded)
            sprite_index = spr_playerN_divebombfall
        if (sprite_index == spr_playerN_divebombland && floor(image_index) == (image_number - 1))
            sprite_index = spr_playerN_divebomb
    }
    if ((sprite_index == spr_playerN_divebomb || sprite_index == spr_playerN_divebombland) && grounded)
    {
        with (instance_create(x, y, obj_particle))
        {
            sprite_index = spr_noisedrilldebris
            image_speed = 0
            image_index = random_range(0, 2)
        }
    }
    if (machafterimage <= 1)
    {
        flash = 1
        rage = 1
        with (instance_create_depth(x, y, (depth + 1), obj_machafterimage))
        {
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.xscale
            image_yscale = other.yscale
        }
    }
    checkplayercrusher()
}