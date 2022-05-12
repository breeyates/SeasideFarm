function buyAnimal(animalType){
	
	if(animalType == "cow") {
		if(global.playerGold >= 500) {
			if(global.cows <= global.MAXcows) {	
				global.cows++;
				gold(-500)
			}
		}
	} else if(animalType == "pig") {
		if(global.playerGold >= 800) {
			if(global.pigs <= global.MAXpigs) {	
				global.pigs++
				gold(-800)
			}
		}
	} else if(animalType == "sheep") {
		if(global.playerGold >= 1000) {
			if(global.sheep <= global.MAXsheep) {	
				global.sheep++;
				gold(-1000)
			}
		}
	} else if(animalType == "chicken") {		
		
		if(global.playerGold >= 200) {	
			
			if(global.chickens < global.MAXchickens) {			
				global.chickens++;		
				gold(-200)
			}
		} 
	}

}