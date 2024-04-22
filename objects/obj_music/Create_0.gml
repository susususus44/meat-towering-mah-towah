function add_music(argument0, argument1)
{
    with (obj_music)
    {
        array_push(musicarray, [argument0, argument1])
    }
}
musicarray = [[testroom, mu_menu]]
escapemu = mu_escape
mutemusic = 0
add_music(rm_hub, mu_hub)
add_music(city_1, mu_city)
add_music(rm_1, mu_music)