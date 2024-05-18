scr_initinput()
menu = ["FILE", "OPTIONS", "EXIT GAME"]
selected = 0
menugui = 0
move = 0
move1 = 0
menugui1 = 1200
opened = 1
fade = 1
bgy = 0
bgx = 0
length = 0
inmenu = 1
textfade = 0
fileselected = 0
depth = -99
image_speed = 0.35
randommessage = ["[wave]SO SO SO PEAK!"]
array_push(randommessage, "[wave]FEATURING THE NOISE")
array_push(randommessage, "[wave]MCPIG APROOVED")
array_push(randommessage, "[c_red][shake]ALSO TRY SOUPER THE GAME")
array_push(randommessage, "[wheel]ALSO TRY CUBE THE GAME")
array_push(randommessage, "[shake][rainbow]LEVEL TEST #")
randommessageid = irandom_range(0, array_length(randommessage) - 1)