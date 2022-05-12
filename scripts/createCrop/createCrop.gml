function createCrop(x, y, crop_type){

	var cs = o_cropManager.cellSize;
	var xx1 = x div cs;
	var yy1 = y div cs
	
	var iGrid = o_cropManager.crops_instances;
	var cell = iGrid[# xx1, yy1]
	
	if(cell == 0) {
		xx = xx1*cs
		yy = yy1*cs
	
	
		var layerID = layer_get_id("Farming_Blocks")
		var mapID = layer_tilemap_get_id(layerID)
		var data = tilemap_get_at_pixel(mapID, x, y);
	
		if (data == 0) {
			show_debug_message("No soil");
			return false;
		} else {
			show_debug_message("Soil")
		}
	
		var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Crops", o_crop);
		
		
		iGrid[# xx1, yy1] = inst;
	
		with(inst) {
			cropType = crop_type
			growthStageDuration = o_cropManager.crop_types[# 0, cropType];
		}
	
		XPGain(1);
		audio_play_sound(a_plant, 2, false)
		
		switch(crop_type) {
		case 0:
			gold(-15);
			break;
		case 1:
			gold(-15);
			break;
		case 2:
			gold(-10);
			break;
		case 3:
			gold(50);
			break;
		case 4:
			gold(-20);
			break;
		case 5:
			gold(-10);
			break;
		case 6:
			gold(-20);
			break;
		case 7:
			gold(-10);
			break;
		case 8:
			gold(-7);
			break;
		case 9:
			gold(-7);
			break;	
	}
		
		return inst;
	} else {
		show_debug_message("Already a plant here")
		return false;
	}
	

}