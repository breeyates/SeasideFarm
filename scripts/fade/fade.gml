function fade(room1, duration1, color1){

	var inst = instance_create_depth(0, 0, 0, o_fade)
	
	with(inst) {
		targetRoom = room1
		duration = duration1
		color = color1
	}

}