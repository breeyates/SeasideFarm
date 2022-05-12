var hour = o_dayNightCycle.hours


if(hour >= phases.sunrise and hour < phases.sunset) {
	
	//beach spawner
	if(room == r_beach) {
		beachItemSpawnerSand(26, 50);

		//Seashells
		beachItemSpawnerSand(27, 50);

		//Seagull Feather
		beachItemSpawnerSand(28, 75);

		//Trash
		beachItemSpawnerSand(34, 99);

		//Glass bottle
		beachItemSpawnerSand(35, 89);
		
		//Herring
		beachFishSpawner(36, 40);
		
		//Goldfish
		beachFishSpawner(37, 20);
		
		//Mackeral
		beachFishSpawner(38, 70);
		
		//Turtle
		beachFishSpawner(39, 5);
		
		//Crab
		beachFishSpawner(40, 11);
		
		//Clownfish
		beachFishSpawner(41, 20);
	}
	
	//farm spawner
	if(room == r_farm) {
		farmItemSpawner(31, 75);

		//Wood
		farmItemSpawner(29, 90);

		//Stone
		farmItemSpawner(30, 90);
	}
		
	//cave
	if(room == r_caveNew) {
		//Diamond
		caveItemSpawner(20, 4); 

		//Ruby
		caveItemSpawner(21, 11);

		//Emerald
		caveItemSpawner(22, 11);

		//Diamond Ore
		caveItemSpawner(23, 25);

		//Gold Ore
		caveItemSpawner(24, 45);

		//Copper Ore
		caveItemSpawner(25, 65);
	}
	
	if(room == r_village) {
		//Rose
		villageItemSpawner(11, 40);
		
		//Starflower
		villageItemSpawner(12, 20);
		
		//Primrose
		villageItemSpawner(11, 80);
		
		//Iris
		villageItemSpawner(11, 80);
		
		//Raspberry
		villageItemSpawner(32, 40);
		
		//Cherry
		villageItemSpawner(33, 50);
		
		//Bugs
		
		//Worm
		villageItemSpawner(42, 65);
		
		//Moth
		villageItemSpawner(43, 50);
		
		//Dragonfly
		villageItemSpawner(44, 20);
		
		//Grasshopper
		villageItemSpawner(45, 50);
	}
	
}