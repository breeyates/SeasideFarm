
if(room == r_farm) {
	if(instance_exists(o_crop)) {
		with(o_crop) {
			
			if(growthStage < maxGrowthStage) {
				daysOld += 1
			
				var firstGrowth = 0;
				if(daysOld > 0) {
					firstGrowth = 1;
				}
			
				growthStage = firstGrowth + (daysOld div growthStageDuration)
			} else {
				growthStage = maxGrowthStage
				fullyGrown = true
			}
		}
	}
} else if (ds_crops_data[# 0, 0] != -1) {
	
	var dsHeight = ds_grid_height(ds_crops_data);
	
	for(var i = 0; i < dsHeight; i++) {
		ds_crops_data[# 3, i]++;
	}
}
