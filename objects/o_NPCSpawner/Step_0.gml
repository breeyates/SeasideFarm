var hour = o_dayNightCycle.hours

//-------------------Beach-------------------
if(room == r_beach) {

	//DayTime
	if(hour > phases.sunrise and hour < phases.sunset) {
		
		//Shane
		if(!instance_exists(o_beachboy)) {
			instance_create_layer(global.shaneX, global.shaneY, "Player", o_beachboy)
		}
	
}

}

//-------------------Village-------------------
else if (room == r_village) {

	if(hour > phases.sunrise and hour < phases.sunset) {
		
		//Idris
		if(!instance_exists(o_florist)) {
			instance_create_layer(global.idrisX, global.idrisY, "Player", o_florist)
		}
		
		//Ava
		if(!instance_exists(o_baker)) {
			instance_create_layer(global.avaX, global.avaY, "Player", o_baker)
		}
		
		//Hazel
		if(!instance_exists(o_grandma)) {
			instance_create_layer(global.hazelX, global.hazelY, "Player", o_grandma)
		}
		
		//Wes
		if(!instance_exists(o_hobo)) {
			instance_create_layer(global.wesX, global.wesY, "Player", o_hobo)
		}
		
		//Harrison
		if(!instance_exists(o_competitor)) {
			instance_create_layer(global.harrisonX, global.harrisonY, "Player", o_competitor)
		}
		
		//Joselyn
		if(!instance_exists(o_teacher)) {
			instance_create_layer(global.joselynX, global.joselynY, "Player", o_teacher)
		}
		
		//Marisa
		if(!instance_exists(o_animalseller)) {
			instance_create_layer(global.marisaX, global.marisaY, "Player", o_animalseller)
		}
	
	}
	
	
	if(hour > phases.sunset) {
		//Antonio
		if(!instance_exists(o_antonio)) {
			show_debug_message("Spawning antonio")
			instance_create_layer(global.antonioX, global.antonioY, "Player", o_antonio)
		}
	}

}

if(room == r_caveEntry) {
	if(hour > phases.sunrise and hour < phases.sunset) {
		//Flynn
		if(!instance_exists(o_blacksmith)) {
			instance_create_layer(global.flynnX, global.flynnY, "Player", o_blacksmith)
		}
	}
}
