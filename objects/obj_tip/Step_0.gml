	alpha = Approach(alpha, (cooldown >= 400 ? 0 : 1), 0.1)
cooldown++
if alpha <= 0
	instance_destroy()
posy = lerp(posy, (cooldown >= 400 ? 15 : 0), 0.05)
