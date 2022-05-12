if(ds_exists(crop_types, ds_type_grid)) {
	ds_grid_destroy(crop_types);
}

if(ds_exists(crops_instances, ds_type_grid)) {
	ds_grid_destroy(crops_instances);
}

if(ds_exists(ds_crops_data, ds_type_grid)) {
	ds_grid_destroy(ds_crops_data);
}