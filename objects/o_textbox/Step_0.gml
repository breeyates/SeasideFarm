//--------------------Going through pages--------------------
if(keyboard_check_pressed(vk_enter)) {

	if(!choiceDia and counter < stringLen) {		
		counter = stringLen
	} else if(page < array_length_1d(text) - 1) {
		event_perform(ev_other, ev_user1)		
		var line = nextLine[page]
		
		if(choiceDia) {
			line = line[choice]
		}
		
		if(line == 0) {
			page++;
		} else if(line == -1) {
			instance_destroy();	
			exit;
		} else {
			page = line;
		}

		event_perform(ev_other, ev_user0)
	} else {
		instance_destroy();	
	}

}

//--------------------Checking choices--------------------
if(choiceDia) {
	choice += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
	
	if(choice > optionsLength - 1) {
		choice = 0
	}
	
	if(choice < 0) {
		choice = optionsLength - 1
	}
}
