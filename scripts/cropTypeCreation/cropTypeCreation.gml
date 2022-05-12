function cropTypeCreation(growthStage2, cost){

	var argNum = argument_count;
	
	if(!ds_exists(crop_types, ds_type_grid)) {
		crop_types = ds_grid_create(argNum, 1);
		var height = 1;
	} else {
		var height = ds_grid_height(crop_types);
		ds_grid_resize(crop_types, argNum, height+1);
		height += 1;
	}
	
	var yy = height - 1;
	
	var i = 0; repeat(argNum) {
		crop_types[# i, yy] = argument[i];
		i += 1;
	}
}