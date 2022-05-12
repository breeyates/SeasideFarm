//item num and room (r_coop or r_barn)
function createMilk(x, y, itemNum){

	randomize();
	
	//Grid variables
	var cs = 16
	var xx1 = x div cs
	var yy1 = y div cs
	
	var iGrid = o_animalManager.milk_instances
	var cell = iGrid[# xx1, yy1]

	
	if(cell == 0) {
		xx = xx1*cs
		yy = yy1*cs
	
		var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Objects", o_item);	
		
		iGrid[# xx1, yy1] = inst
	
		with(inst) {
			iNum = itemNum;
			xFrame = iNum mod (sWidth / cellSize);
			yFrame = iNum div (sWidth / cellSize);
			spawnedItem = true;
			itemSprite = s_inventoryItemsGround;
		}
	}
}