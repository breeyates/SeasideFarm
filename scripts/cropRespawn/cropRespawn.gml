function cropRespawn(gridX, gridY, cropType2, daysOld2){

	var xx = gridX*cellSize;
	var yy = gridY*cellSize;

	var inst = instance_create_layer(xx+(cellSize/2), yy+(cellSize/2), "Crops", o_crop);
	crops_instances[# gridX, gridY]  = inst;
	
	with(inst) {
		cropType = cropType2;
		daysOld = daysOld2
		growthStageDuration = o_cropManager.crop_types[# 0, cropType];
	}
	
	return inst;
	
}