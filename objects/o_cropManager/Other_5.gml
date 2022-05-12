if(room == r_farm) {
	var insts = instance_number(o_crop);
	
	if(insts != 0) {
		
		ds_grid_resize(ds_crops_data, 4, insts)
		
		var gridWidth = ds_grid_width(crops_instances)
		var gridHeight = ds_grid_height(crops_instances)
		var slot = 0;
		
		for(var i = 0; i < gridWidth; i++) {
			for(var j = 0; j < gridHeight; j++) {
				var insts2 = crops_instances[# i, j]
				
				if(insts2 != 0) {
					ds_crops_data[# 0, slot] = i
					ds_crops_data[# 1, slot] = j
					ds_crops_data[# 2, slot] = insts2.cropType
					ds_crops_data[# 3, slot] = insts2.daysOld
					
					slot += 1
				}
			}
		}		
		
	} else {
		ds_grid_clear(ds_crops_data, -1)
	}
	
	ds_grid_destroy(crops_instances)
	
}
