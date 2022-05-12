depth = -1

crop_types = -1;
crops_instances = -1;
ds_crops_data = ds_grid_create(4, 1);
ds_grid_clear(ds_crops_data, -1);

enum crop {
	carrot,
	tomato,
	strawberry,
	pumpkin,
	potato,
	corn,
	watermellon,
	cabbage,
	radish,
	hay,	
}


cropTypeCreation(1, 35);	//carrot
cropTypeCreation(4, 35);	//tomato
cropTypeCreation(3, 30);	//strawberry
cropTypeCreation(6, 50);	//pumpkin
cropTypeCreation(5, 45);	//potato
cropTypeCreation(3, 30);	//corn
cropTypeCreation(5, 45);	//watermellon
cropTypeCreation(3, 30);	//cabbage
cropTypeCreation(2, 20);	//radish
cropTypeCreation(2, 20);	//hay


planting = false;
selectCrop = 0;

mx = 0;
my = 0;

cellSize = 16;
