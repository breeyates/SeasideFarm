function randomRarity(rarity){

	var numToSpawn;

	if(rarity >= 0 and rarity < 10) {
		numToSpawn = random_range(0, 1);
	} else if(rarity >= 10 and rarity < 20) {
		numToSpawn = random_range(0, 1);
	} else if(rarity >= 20 and rarity < 30) {
		numToSpawn = random_range(0, 2);
	} else if(rarity >= 30 and rarity < 40) {
		numToSpawn = random_range(0, 2);
	} else if(rarity >= 40 and rarity < 50) {
		numToSpawn = random_range(0, 3);
	} else if(rarity >= 60 and rarity < 70) {
		numToSpawn = random_range(0, 3);
	} else if(rarity >= 70 and rarity < 80) {
		numToSpawn = random_range(0, 4);
	} else if(rarity >= 80 and rarity < 90) {
		numToSpawn = random_range(0, 4);
	} else if(rarity >= 90 and rarity < 100) {
		numToSpawn = random_range(0, 5);
	}
	
	return numToSpawn;
	
}