if(room == r_farm) {
	farm_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
	ds_grid_clear(farm_instances, 0)
	
	if(ds_farm_data[# 0, 0] != -1) {
		
		var insts = ds_grid_height(ds_farm_data)
				
		for(var i = 0; i < insts; i++) {
			farmRespawn(ds_farm_data[# 0, i], ds_farm_data[# 1, i], ds_farm_data[# 2, i])
		}
		
	}
	
}
