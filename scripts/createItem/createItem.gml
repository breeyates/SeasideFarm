function createItem(itemNum, rarity, roomLayer, room){
		
	var cs = 16
	var iGrid;
	
	if(room = r_farm) {
		iGrid = o_itemManager.farm_instances
	} else if(room = r_village) {
		iGrid = o_itemManager.village_instances
	} else if(room = r_beach) {
		iGrid = o_itemManager.beach_instances
	} else if(room = r_cave) {
		iGrid = o_itemManager.cave_instances
	}
	
	var randX;
	var randY;
	var data;
	var numToSpawn;
	

	if(rarity >= 0 and rarity < 10) {
		numToSpawn = random_range(0, 1);
	} else if(rarity >= 10 and rarity < 20) {
		numToSpawn = random_range(0, 1);
	} else if(rarity >= 20 and rarity < 30) {
		numToSpawn = random_range(0, 2);
	} else if(rarity >= 30 and rarity < 40) {
		numToSpawn = random_range(0, 2);
	} else if(rarity >= 40 and rarity < 50) {
		numToSpawn = random_range(0, 3);
	} else if(rarity >= 60 and rarity < 70) {
		numToSpawn = random_range(0, 3);
	} else if(rarity >= 70 and rarity < 80) {
		numToSpawn = random_range(0, 4);
	} else if(rarity >= 80 and rarity < 90) {
		numToSpawn = random_range(0, 4);
	} else if(rarity >= 90 and rarity < 100) {
		numToSpawn = random_range(0, 5);
	}
		
	for(var i = 0; i < numToSpawn; i += 1) {
		
		randomize();
		var randX = random_range(0, room_width);
		var randY = random_range(0, room_height);
		
		var layerID = layer_get_id(roomLayer)
		var mapID = layer_tilemap_get_id(layerID)
		var data = tilemap_get_at_pixel(mapID, randX, randY);
	
		if(data == 0) {
			//Generate random coords until they are on grass
			randomize();
			var randX = random_range(0, room_width);
			var randY = random_range(0, room_height);
		} else {
			
			var xx1 = randX div cs
			var yy1 = randY div cs
			var cell = iGrid[# xx1, yy1]
			
			if(cell == 0) {
			
				xx = xx1*cs
				yy = yy1*cs
			
				var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Objects", o_item);	
				
				iGrid[# xx1, yy1] = inst;
				
				
				with(inst) {
					iNum = itemNum;
					xFrame = iNum mod (sWidth / cellSize);
					yFrame = iNum div (sWidth / cellSize);
					spawnedItem = true;
					itemSprite = s_inventoryItemsGround;
				}
				
				return inst;
		
				show_debug_message("Spawned an object at: " + string(randX) + " ," + string(randY));
			} else {
				return false
			}
		}
	}
}