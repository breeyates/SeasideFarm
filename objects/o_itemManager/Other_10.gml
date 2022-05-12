if(room == r_farm) {
	//Wood
	createItem(29, 90, "Grass", r_farm);
	//Stone
	createItem(30, 90, "Grass",  r_farm);
	//Mushroom
	createItem(31, 90, "Grass",  r_farm);

} else {

	var instNum = 0;
	
	//Wood
	var numWood = randomRarity(90);
	instNum += numWood;
	
	//Stone
	var numStone = randomRarity(90);
	instNum += numStone;
		
	//Mushroom
	var numMushroom = randomRarity(90);
	instNum += numMushroom;
	
	ds_grid_resize(ds_farm_data, 3, instNum);
	
	//Add Wood
	for(var i = 0; i < instNum - numMushroom - numStone; i++) {	
		var randX = random_range(320, 20);
		var randY = random_range(80, 100);
		
		show_debug_message("Adding wood to farm data")
		ds_farm_data[# 0, i] = randX
		ds_farm_data[# 1, i] = randY
		ds_farm_data[# 2, i] = items.wood
	}
	
	//Add Stone
	for(var i = numWood; i < instNum - numMushroom; i++) {	
		var randX = random_range(320, 20);
		var randY = random_range(80, 100);
		
		show_debug_message("Adding wood to farm data")
		ds_farm_data[# 0, i] = randX
		ds_farm_data[# 1, i] = randY
		ds_farm_data[# 2, i] = items.stone
	}
	
	//Add Mushroom
	for(var i = numStone + numWood; i < instNum; i++) {	
		var randX = random_range(320, 20);
		var randY = random_range(80, 100);
		
		show_debug_message("Adding mushroom to farm data")
		ds_farm_data[# 0, i] = randX
		ds_farm_data[# 1, i] = randY
		ds_farm_data[# 2, i] = items.mushroom
	}
	
	
	
	
	
}