//Chickens
if(room = r_coop) {	
	
	var chickenNum = global.chickens	
	for(var i = 0; i < chickenNum; i++) {	
		
		if(instance_number(o_chicken) >= chickenNum) {
			break;
		}
		
		var randX = random_range(140, 200);
		var randY = random_range(90, 100);	
		instance_create_layer(randX, randY, "Objects", o_chicken)	
		show_debug_message("Created a chicken")
	}
}




if(room == r_barn) {
	var cowNum = global.cows
	for(var i = 0; i < cowNum; i++) {			
		if(instance_number(o_cow) >= cowNum) {
			break;
		}		
		var randX = random_range(70, 200);
		var randY = random_range(80, 100);	
		instance_create_layer(randX, randY, "Objects", o_cow)	
		show_debug_message("Created a cow")
	}
	
	
	var sheepNum = global.sheep
	for(var i = 0; i < sheepNum; i++) {			
		if(instance_number(o_sheep) >= sheepNum) {
			break;
		}		
		var randX = random_range(70, 200);
		var randY = random_range(80, 100);	
		instance_create_layer(randX, randY, "Objects", o_sheep)	
		show_debug_message("Created a sheep")
	}
	
	var pigNum = global.pigs
	for(var i = 0; i < pigNum; i++) {			
		if(instance_number(o_pig) >= pigNum) {
			break;
		}		
		var randX = random_range(70, 200);
		var randY = random_range(80, 100);	
		instance_create_layer(randX, randY, "Objects", o_pig)	
		show_debug_message("Created a pig")
	}
}
