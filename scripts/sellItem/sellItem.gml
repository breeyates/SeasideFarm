function sellItem(itemType){

	var l;

	if(global.playerLevel >= 1 and global.playerLevel < 5) {
		l = 1
	} else if(global.playerLevel >= 5 and global.playerLevel < 10) {
		l = 1.5
	} if(global.playerLevel >= 10 and global.playerLevel < 15) {
		l = 2
	} if(global.playerLevel >= 15) {
		l = 3
	}

	switch(itemType) {
		case 0:
			global.goldStash += 0 * l;
			break;
		case 1:
			global.goldStash += 45  * l
			break;
		case 2:
			global.goldStash += 45 * l
			break;
		case 3:
			global.goldStash += 40 * l
			break;
		case 4:
			global.goldStash += 65 * l
			break;
		case 5:
			global.goldStash += 60 * l
			break;
		case 6:
			global.goldStash += 40 * l
			break;
		case 7:
			global.goldStash += 55 * l
			break;
		case 8:
			global.goldStash += 40 * l
			break;
		case 9:
			global.goldStash += 30 * l
			break;
		case 10:
			global.goldStash += 30 * l
			break;
		case 11:
			global.goldStash += 20 * l
			break;
		case 12:
			global.goldStash += 40 * l
			break;
		case 13:
			global.goldStash += 25 * l
			break;	
		case 14:
			global.goldStash += 25 * l
			break;
		case 15:
			global.goldStash += 50 * l
			break;
		case 16:
			global.goldStash += 60 * l
			break;
		case 17:
			global.goldStash += 70 * l
			break;	
		case 18:
			global.goldStash += 80 * l
			break;
		case 19:
			global.goldStash += 90 * l
			break;
		case 20:
			global.goldStash += 200 * l
			break;
		case 21:
			global.goldStash += 150 * l
			break;		
		case 22:
			global.goldStash += 100 * l
			break;
		case 23:
			global.goldStash += 75 * l
			break;
		case 24:
			global.goldStash += 60 * l
			break;
		case 25:
			global.goldStash += 45 * l
			break;		
		case 26:
			global.goldStash += 20 * l
			break;
		case 27:
			global.goldStash += 20 * l
			break;
		case 28:
			global.goldStash += 5 * l
			break;
		case 29:
			global.goldStash += 7 * l
			break;		
		case 30:
			global.goldStash += 7 * l
			break;		
		case 31:
			global.goldStash += 5 * l
			break;
		case 32:
			global.goldStash += 15 * l
			break;
		case 33:
			global.goldStash += 15 * l
			break;
		case 34:
			global.goldStash += 2 * l
			break;	
		case 35:
			global.goldStash += 1 * l
			break;		
		case 36:
			global.goldStash += 50 * l
			break;	
		case 37:
			global.goldStash += 60 * l
			break;	
		case 38:
			global.goldStash += 45 * l
			break;	
		case 39:
			global.goldStash += 150 * l
			break;	
		case 40:
			global.goldStash += 85 * l
			break;	
		case 41:
			global.goldStash += 80 * l
			break;	
		case 42:
			global.goldStash += 20 * l
			break;	
		case 43:
			global.goldStash += 20 * l
			break;
		case 44:
			global.goldStash += 40 * l
			break;	
		case 45:
			global.goldStash += 35 * l
			break;
				
	}


}