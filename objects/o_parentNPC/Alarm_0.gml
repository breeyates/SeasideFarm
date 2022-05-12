if(abletoMove) {
	xMove = 0;
	yMove = 0;

	var idle = choose(0, 1);
	
	//show_debug_message("Idle? " + string(idle))

	if (idle == false) {	
		randomize()
		var dir = choose(1, 2, 3, 4);
	
		switch dir {
			case 1:
				xMove = -spd
				break;
			case 2:
				xMove = spd;
				break;
			case 3:
				yMove = -spd
				break;
			case 4:
				yMove = spd
				break;
		}
	
	}

	alarm[0] = random_range(2.5, 4) * room_speed;
}