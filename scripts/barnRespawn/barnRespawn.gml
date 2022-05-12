function barnRespawn(gridX, gridY, itemNum){

	show_debug_message("Running barnRespawn")
	
	var cs = 16
	var xx1 = gridX div cs
	var yy1 = gridY div cs
	
	var iGrid = o_animalManager.barn_instances
	var cell = iGrid[# xx1, yy1]
	
	if(cell == 0) {
		xx = xx1*cs
		yy = yy1*cs
		
		var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Objects", o_item);
		show_debug_message("Created Inst")
		
		iGrid[# xx1, yy1] = inst
		
		with(inst) {
			iNum = itemNum;
			xFrame = iNum mod (sWidth / cellSize);
			yFrame = iNum div (sWidth / cellSize);
			spawnedItem = true;
			itemSprite = s_inventoryItemsGround;
		}
		
		return inst;
	} else {
		return false
	}

	
	
}