if(ds_exists(coop_instances, ds_type_grid)) {
	ds_grid_destroy(coop_instances);
}

if(ds_exists(ds_coop_data, ds_type_grid)) {
	ds_grid_destroy(ds_coop_data);
}

if(ds_exists(ds_barn_data, ds_type_grid)) {
	ds_grid_destroy(ds_barn_data);
}

if(ds_exists(barn_instances, ds_type_grid)) {
	ds_grid_destroy(barn_instances);
}


if(ds_exists(ds_milk_data, ds_type_grid)) {
	ds_grid_destroy(ds_milk_data);
}

if(ds_exists(milk_instances, ds_type_grid)) {
	ds_grid_destroy(milk_instances);
}

if(ds_exists(ds_wool_data, ds_type_grid)) {
	ds_grid_destroy(ds_wool_data);
}

if(ds_exists(wool_instances, ds_type_grid)) {
	ds_grid_destroy(wool_instances);
}

if(ds_exists(ds_bacon_data, ds_type_grid)) {
	ds_grid_destroy(ds_bacon_data);
}

if(ds_exists(bacon_instances, ds_type_grid)) {
	ds_grid_destroy(bacon_instances);
}