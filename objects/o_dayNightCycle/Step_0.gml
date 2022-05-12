if(keyboard_check_pressed(ord("T"))) {
	timePause = !timePause;
}

if (timePause) {
	exit
}


seconds += timeInc;
minutes = seconds/60;
hours = minutes/60;
//show_debug_message("Hours in o_dayNightCycle: " + string(hours))

//nightColor = hours/24;

if(drawLight) {
	
	var darks
	var colors 
	var pStart
	var pEnd
	
	if(hours > phases.sunrise and hours <= phases.daytime) {
		//show_debug_message("Sunrise to daytime")
		darks = [maxNightColor, 0.2];
		colors = [merge_color(c_black, c_navy, 0.3), c_orange];
		pStart = phases.sunrise
		pEnd = phases.daytime
		
		with(o_parentNPC) {
			event_perform(ev_other, ev_user0)
		}
		
	} else if (hours > phases.daytime and hours <= phases.sunset) {
		//show_debug_message("Daytime to sunset")
		darks = [0.2, 0, 0, 0, 0.2];
		colors = [c_orange, c_orange, c_white, c_orange, c_orange];
		pStart = phases.daytime
		pEnd = phases.sunset
		
	} else if (hours > phases.sunset and hours <= phases.night) {
		////show_debug_message("Sunset to night")
		darks = [0.2, maxNightColor];
		colors = [c_orange, c_navy, merge_color(c_black, c_navy, 0.3)];
		pStart = phases.sunset
		pEnd = phases.night
		
	} else {
		//show_debug_message("Night to sunrise")
		darks = [maxNightColor];
		colors = [merge_color(c_black, c_navy, 0.3)];
		pStart = phases.night
		pEnd = phases.sunrise
		
	}
	
	//COLORS
	if( pStart == phases.night) {
		lightColor = colors[0];
	} else {
		var colors2 = ((hours - pStart)/(pEnd - pStart)) * (array_length_1d(colors) - 1)
		var colors3 = colors[floor(colors2)]
		var colors4 = colors[ceil(colors2)]
	
		lightColor = merge_color(colors3, colors4, colors2 - floor(colors2));
	}
	
	
	//DARK
	
	if(pStart == phases.night) {
		nightColor = darks[0];
	} else {
		var darks2 = ((hours - pStart)/(pEnd - pStart)) * (array_length_1d(darks) - 1)
		var darks3 = darks[floor(darks2)]
		var darks4 = darks[ceil(darks2)]
	
		nightColor = mergeNum(darks3, darks4, darks2 - floor(darks2));
	}
	
}


//Changing days/months/year

//Change this back to >= 24
if(hours >= 4) {
	seconds = 0;
	day++;
	
	//show_debug_message("Make it to hour >= 9")
	
	with(o_cropManager) {
		//show_debug_message("Made it to crop spawner")
		event_perform(ev_other, ev_user0)
	}
	
	
	//Animal drops
	with(o_animalManager) {
		show_debug_message("Running animal manager event")
		event_perform(ev_other, ev_user0)
	}
	
	//Item drop
	with(o_itemManager) {
		event_perform(ev_other, ev_user0)
	}
	
	#region NPCs
	//Reset daily dialouge
	global.shaneTalked = false
	global.idrisTalked = false
	global.avaTalked = false
	global.wesTalked = false
	global.hazelTalked = false;
	global.flynnTalked = false;
	global.harrisonTalked = false;
	global.joselynTalked = false;
	
	#endregion
		
	//give player gold
	global.playerGold += global.goldStash;
	global.goldStash = 0;
	
	if(day > 15) {
		day = 1;
		months++;
		
		if(months>4) {
			months = 1;
			year++;
		}
	}
}

if(hours >= phases.sunrise) {
	global.antonioTalked = false;
}
