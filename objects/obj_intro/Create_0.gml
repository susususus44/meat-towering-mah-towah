global.defaultfont = font_add_sprite_ext(spr_font, "abcdefghijklmnopqrstuvwxyz,.!?ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1, 0)
video = video_open("intro.mp4")
videoclosed = 0
video_set_volume(global.vol)
video_enable_loop(false)
scr_initinput()
depth = 100
//у меня тут в нычке варёние яички..