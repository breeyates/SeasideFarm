var hour = o_dayNightCycle.hours

if(!global.isInside and (hour > phases.sunrise and hour <= phases.sunset)) {
	draw_sprite(s_shadow, 0, x, y + 3)
}

if(instance_exists(self)) {
	draw_self()
}

