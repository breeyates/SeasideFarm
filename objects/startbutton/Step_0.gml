if(mouse_check_button_pressed(mb_left)) {
	
	if (collision_point(mouse_x, mouse_y, id, true, false)) {	
	
		audio_stop_sound(a_intromusic);
		
		room_goto(r1_house);
	
		/*
		if(file_exists(SAVEFILE)) {
			game_load(SAVEFILE)
			audio_stop_sound(a_intromusic)
		} else {
			file_delete("Save.dat")
			audio_stop_sound(a_intromusic)
			room_goto(r1_house)
		}
		
		*/
	}
}
