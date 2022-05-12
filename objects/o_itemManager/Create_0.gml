cellSize = 16

//Farm spawns
farm_instances = -1;
ds_farm_data = ds_grid_create(3, 1);

//Village spawns
village_instances = -1;
ds_village_data = ds_grid_create(3, 1);

//Beach spawns
beach_instances = -1;
ds_beach_data = ds_grid_create(3, 1);

//Cave spawns
cave_instances = -1;
ds_cave_data = ds_grid_create(3, 1);

enum items {
	none = 0,
	carrot = 1,
	tomato = 2,
	strawberry = 3,
	pumpkin = 4,
	potato = 5,
	corn = 6,
	watermelon = 7,
	cabbage = 8,
	radish = 9,
	hay = 10,
	rose = 11,
	starflower = 12,
	primrose = 13,
	iris = 14,
	egg = 15,
	milk = 16,
	cheese = 17,
	wool = 18,
	bacon = 19,
	diamond = 20,
	ruby = 21,
	emerald = 22,
	diamondOre = 23,
	goldOre = 24,
	copperOre = 25,
	clam = 26,
	seashell = 27,
	seagullFeather = 28,
	wood = 29,
	stone = 30,
	mushroom = 31,
	raspberry = 32,
	cherry = 33,
	trash = 34,
	glassbottle = 35
}
