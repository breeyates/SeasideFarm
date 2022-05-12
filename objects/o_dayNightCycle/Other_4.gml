switch(room) {
	case r_farm:
		drawLight = true;
		break;
		
	case r_village:
		drawLight = true;
		break;
		
	case r_caveEntry:
		drawLight = true;
		break;
		
	case r_beach:
		drawLight = true;
		break;
	
	default:
		drawLight = false;
		break;
}


//show_debug_message("DayLight Cycle Currently in:   " + string(room))