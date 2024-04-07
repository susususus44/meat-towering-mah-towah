drawy = Approach(drawy, (timer >= 0 ? 0 : -545), 40)
drawx = Approach(drawx, (timer >= 0 ? 0 : 960), 40)
timer--
if (timer < 0 && drawy <= -545)
	instance_destroy()