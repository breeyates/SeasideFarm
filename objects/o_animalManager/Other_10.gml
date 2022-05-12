var egg = 15
var milk = 16
var wool = 18
var bacon = 19

#region COOP
if(room == r_coop) {
	//Chickens
	if(instance_exists(o_chicken)) {		
		var instNum = global.chickens
		
		for(var i = 0; i < instNum; i++) {			
			//var numSpawn = choose(0, 1)					
			var coopRandX = random_range(140, 200);
			var coopRandY = random_range(90, 100);		
			createEgg(coopRandX, coopRandY, egg);
		}	
	}

} else {

	var instNum = global.chickens
	ds_grid_resize(ds_coop_data, 3, instNum)

	for(var i = 0; i < instNum; i++) {
		
		var coopRandX = random_range(70, 200);
		var coopRandY = random_range(80, 100);
		
		show_debug_message("Adding to ds_coop_data")
		ds_coop_data[# 0, i] = coopRandX
		ds_coop_data[# 1, i] = coopRandY
		ds_coop_data[# 2, i] = egg
	}
	
}
#endregion




if(room == r_barn)	{
	if(instance_exists(o_cow)) {		
		var cowNum = global.cows
		
		for(var i = 0; i < cowNum; i++) {			
			//var numSpawn = choose(0, 1)					
			var barnRandX = random_range(30, 280);
			var barnRandY = random_range(60, 130);		
			createMilk(barnRandX, barnRandY, milk);
		}	
	}
	
	if(instance_exists(o_sheep)) {		
		var sheepNum = global.sheep
		
		for(var i = 0; i < sheepNum; i++) {			
			//var numSpawn = choose(0, 1)					
			var barnRandX = random_range(30, 280);
			var barnRandY = random_range(60, 130);			
			createWool(barnRandX, barnRandY, wool);
		}	
	}
	
	if(instance_exists(o_pig)) {		
		var pigNum = global.pigs
		
		for(var i = 0; i < pigNum; i++) {			
			//var numSpawn = choose(0, 1)					
			var barnRandX = random_range(30, 280);
			var barnRandY = random_range(60, 130);			
			createBacon(barnRandX, barnRandY, bacon);
		}	
	}

} else {
	
	var cowNum = global.cows
	var sheepNum = global.sheep
	var pigNum = global.pigs
	
	ds_grid_resize(ds_milk_data, 3, cowNum)
	ds_grid_resize(ds_wool_data, 3, sheepNum)
	ds_grid_resize(ds_bacon_data, 3, pigNum)
	
	for(var i = 0; i < cowNum; i++) {
		
		var barnRandX = random_range(70, 200);
		var barnRandY = random_range(80, 100);
		
		show_debug_message("Adding to ds_milk_data")
		ds_milk_data[# 0, i] = barnRandX
		ds_milk_data[# 1, i] = barnRandY
		ds_milk_data[# 2, i] = milk
	}
	
	for(var i = 0; i < sheepNum; i++) {
		
		var barnRandX = random_range(70, 200);
		var barnRandY = random_range(80, 100);
		
		show_debug_message("Adding to ds_wool_data")
		ds_wool_data[# 0, i] = barnRandX
		ds_wool_data[# 1, i] = barnRandY
		ds_wool_data[# 2, i] = wool
	}
	
	for(var i = 0; i < pigNum; i++) {
		
		var barnRandX = random_range(70, 200);
		var barnRandY = random_range(80, 100);
		
		show_debug_message("Adding to ds_bacon_data")
		ds_bacon_data[# 0, i] = barnRandX
		ds_bacon_data[# 1, i] = barnRandY
		ds_bacon_data[# 2, i] = bacon
	}

	
}
