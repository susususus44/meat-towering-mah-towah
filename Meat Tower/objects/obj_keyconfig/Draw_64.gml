scr_getinput()
draw_set_color(c_black)
draw_set_font(Font1)
draw_rectangle_color(0, 0, 961, 541, c_black, c_black, c_black, c_black, false)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_alpha(1)
draw_set_color(c_white)
draw_text_scribble(480, 270, "The controls are in the appdata folder\nSearch for the %appdata% find Meat_Tower and in file option change your controls\n\npress the attack button to exit")
if key_attack
{
	obj_option.backbuffer = 3
	instance_destroy()
	url_open("https://www.foreui.com/articles/Key_Code_Table.htm")
}