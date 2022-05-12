
//Coop / chickens
if(room == r_coop) {
	coop_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
	ds_grid_clear(coop_instances, 0)
	
	if(ds_coop_data[# 0, 0] != -1) {
		
		var insts = ds_grid_height(ds_coop_data)
				
		for(var i = 0; i < insts; i++) {
			coopRespawn(ds_coop_data[# 0, i], ds_coop_data[# 1, i], ds_coop_data[# 2, i])
		}
		
	}
	
}


if(room == r_barn) {
	//------------Milk------------
	milk_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
	ds_grid_clear(milk_instances, 0)
	
	//------------Wool------------
	wool_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
	ds_grid_clear(wool_instances, 0)
	
	//------------Bacon------------
	bacon_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
	ds_grid_clear(bacon_instances, 0)
	
	//------------Milk------------
	if(ds_milk_data[# 0, 0] != -1) {	
		var insts = ds_grid_height(ds_milk_data)				
		for(var i = 0; i < insts; i++) {
			milkRespawn(ds_milk_data[# 0, i], ds_milk_data[# 1, i], ds_milk_data[# 2, i])
		}		
	}
	
	//------------Wool------------
	if(ds_wool_data[# 0, 0] != -1) {	
		var insts = ds_grid_height(ds_wool_data)				
		for(var i = 0; i < insts; i++) {
			woolRespawn(ds_wool_data[# 0, i], ds_wool_data[# 1, i], ds_wool_data[# 2, i])
		}		
	}
	
	//------------Bacon------------
	if(ds_bacon_data[# 0, 0] != -1) {	
		var insts = ds_grid_height(ds_bacon_data)				
		for(var i = 0; i < insts; i++) {
			baconRespawn(ds_bacon_data[# 0, i], ds_bacon_data[# 1, i], ds_bacon_data[# 2, i])
		}		
	}

}