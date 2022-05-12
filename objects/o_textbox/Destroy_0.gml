with(npcInst) {
	abletoMove = true;
	talkedToday = true;
	
	//Harrison
	if(npcInst == o_competitor) {		
		if(friendshipLevel == 1) {
			friendshipXP += 5
		}
	}
	
	//Marko
	if(npcInst == o_hobo) {		
		if(friendshipLevel == 1) {
			friendshipXP += 5
		}
	}
	
	//Antonio
	if(npcInst == o_antonio) {		
		if(friendshipLevel == 1) {
			friendshipXP += 5
		}
		
		if(friendshipLevel == 2) {
			friendshipXP += 10
		}
	}
	
	//Baker
	if(npcInst == o_baker) {		
		if(friendshipLevel == 2) {
			friendshipXP += 5
		}
	}
	
	//Blacksmith
	if(npcInst == o_blacksmith) {		
		if(friendshipLevel == 2) {
			friendshipXP += 5
		}
	}
}

with(o_player) {
	abletoMove = true;
}
