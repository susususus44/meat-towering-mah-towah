var backgroundx = camera_get_view_x(view_camera[0])
var backgroundy = camera_get_view_y(view_camera[0])
var bg = layer_get_id("Background_1")
layer_x(bg, lerp(0, (backgroundx), 0.1)); 
layer_y(bg, lerp(0, (backgroundy), 0.1)); 
var bg1 = layer_get_id("Background_H1")
layer_y(bg1, lerp(0, (backgroundy), 0.1)); 
