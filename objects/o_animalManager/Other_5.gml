if(room == r_coop) {
	
	var insts = instance_number(o_item);	
	if(insts != 0) {
		
		ds_grid_resize(ds_coop_data, 3, insts)
		
		var gridWidth = ds_grid_width(coop_instances)
		var gridHeight = ds_grid_height(coop_instances)
		var slot = 0;
		
		for(var i = 0; i < gridWidth; i++) {
			for(var j = 0; j < gridHeight; j++) {
				
				var insts2 = coop_instances[# i, j]
				
				if(insts2 != 0) {
					coop_instances[# 0, slot] = i
					coop_instances[# 1, slot] = j
					coop_instances[# 2, slot] = insts2.iNum
					
					slot += 1
				}
			}
		}		
		
	show_debug_message("Num of insts in room end: " + string(insts))	
	} else {
		ds_grid_clear(ds_coop_data, -1)
	}	
	ds_grid_destroy(coop_instances)
	
}

if(room == r_barn) {
	
	var insts = instance_number(o_item);	
	if(insts != 0) {	
		
		if(o_item.iNum == 16) {
			ds_grid_resize(ds_milk_data, 3, global.cows)		
			var gridWidth = ds_grid_width(milk_instances)
			var gridHeight = ds_grid_height(milk_instances)
			var slot = 0;
		
			for(var i = 0; i < gridWidth; i++) {
				for(var j = 0; j < gridHeight; j++) {			
					var insts2 = milk_instances[# i, j]			
					if(insts2 != 0) {
						milk_instances[# 0, slot] = i
						milk_instances[# 1, slot] = j
						milk_instances[# 2, slot] = insts2.iNum					
						slot += 1
					}
				}
			}			
		} 
		
		if(o_item.iNum == 18) {
			ds_grid_resize(ds_wool_data, 3, global.sheep)		
			var gridWidth = ds_grid_width(wool_instances)
			var gridHeight = ds_grid_height(wool_instances)
			var slot = 0;
		
			for(var i = 0; i < gridWidth; i++) {
				for(var j = 0; j < gridHeight; j++) {			
					var insts2 = wool_instances[# i, j]			
					if(insts2 != 0) {
						wool_instances[# 0, slot] = i
						wool_instances[# 1, slot] = j
						wool_instances[# 2, slot] = insts2.iNum					
						slot += 1
					}
				}
			}			
		} 
		
		if(o_item.iNum == 19) {
			ds_grid_resize(ds_bacon_data, 3, global.pigs)		
			var gridWidth = ds_grid_width(bacon_instances)
			var gridHeight = ds_grid_height(bacon_instances)
			var slot = 0;
		
			for(var i = 0; i < gridWidth; i++) {
				for(var j = 0; j < gridHeight; j++) {			
					var insts2 = bacon_instances[# i, j]			
					if(insts2 != 0) {
						bacon_instances[# 0, slot] = i
						bacon_instances[# 1, slot] = j
						bacon_instances[# 2, slot] = insts2.iNum					
						slot += 1
					}
				}
			}			
		}
		
		
		
		
		} else {
			ds_grid_clear(ds_milk_data, -1)
			ds_grid_clear(ds_wool_data, -1)
			ds_grid_clear(ds_bacon_data, -1)
		}	
		
		
		ds_grid_destroy(milk_instances)
		ds_grid_destroy(wool_instances)
		ds_grid_destroy(bacon_instances)

	
}



