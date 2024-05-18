keys = []
selected = 0
key_selected = 0
draw = 0
offsetx = 960
fade = 0
drawsp = 0
backbuffer = 3
depth = -201
image_speed = 0.35
array_push(keys, ["UP", global.key_upC])
array_push(keys, ["DOWN", global.key_downC])
array_push(keys, ["LEFT", global.key_leftC])
array_push(keys, ["RIGHT", (global.key_rightC)])
array_push(keys, ["JUMP", (global.key_jumpC)])
array_push(keys, ["ATTACK", (global.key_attackC)])
array_push(keys, ["SECONDARY ATTACK", (global.key_knifeC)])
array_push(keys, ["EXIT", ("PRESS JUMP")])