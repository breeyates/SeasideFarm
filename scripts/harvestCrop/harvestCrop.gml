function harvestCrop(x, y, crop_type){

	var cs = o_cropManager.cellSize;
	var xx1 = x div cs;
	var yy1 = y div cs
	
	var iGrid = o_cropManager.crops_instances;
	var cell = iGrid[# xx1, yy1]
	
	if(cell == 1) {
		xx = xx1*cs
		yy = yy1*cs
	
		var inst = instance_destroy(o_crop);
		//var instNum = instance_number(o_crop)
			
		iGrid[# xx1, yy1] = inst;
	
		/*
		with(inst) {
			cropType = crop_type
			growthStageDuration = o_cropManager.crop_types[# 0, cropType];
		}
		*/
	
		XPGain(5);
		return inst;
	} else {
		show_debug_message("Nothing here to harvest")
		return false;
	}
	

}