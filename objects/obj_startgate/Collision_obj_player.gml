with (other) {
	if (key_up2 && grounded && sprite_index != spr_lookdoor && sprite_index != spr_walkfront) {
		global.roomrestartto = other.targetRoom
		global.doorrestartto = other.targetDoor
		global.resettox = x
		global.resettoy = y
		global.resettoroom = room
		global.levelsaveto = other.level
		global.levelname = other.levelname
		hsp = 0
		movespeed = 0
		vsp = 0
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		sprite_index = spr_entergate
		image_index = 0
		image_speed = 0.35
		state = states.door
	}
}
ini_open(global.file)
var points = ini_read_real(level, "collect", 0)
ini_close()
draw_text(0, 0, points)