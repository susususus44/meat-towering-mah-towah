scr_collision()
enum enemystates {
	normal,
	turn,
	meatbox,
}
if grounded
	imabouttadie = 0
switch (state)
{
	case enemystates.normal:
		scr_enemy_normal()
		break
	case enemystates.turn:
		scr_enemy_turn()
		break
	case enemystates.meatbox:
		scr_enemy_meatbox()
		break
}