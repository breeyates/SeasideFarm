event_inherited()

//-------------------Choices-----------------
if(global.playerLevel < 3) {
	
	text = ["Hey farmer! I'm Marisa and I can sell you some farm friends",
			"Oh it looks like you aren't high enough level to purchase your first \nanimal. Come back when you hit level 3"
	]
	speakers = [id, id]
	nextLine = [0, -1]
	scripts = [-1, -1]

} else if(global.playerLevel >=3 and global.playerLevel < 6) {
	
	
	text = ["Hey farmer! I'm Marisa and I can sell you some farm friends. \nWhat kind of animal would you like?",
			["Chicken (200Gold)", "Nothing"],
			soldLine,
			denyLine,
			maxLine
	]
	speakers = [id, o_player, id, id, id]
	
	if(global.playerGold >= 200) {
		
		if(global.chickens < global.MAXchickens) {	
			nextLine = [0, [2, -1], -1, -1, -1]
		} else {
			nextLine = [0, [4, -1], -1, -1, -1]
		}
	} else {
		nextLine = [0, [3, -1], -1, -1, -1]
	}
	
	scripts = [ -1, 
			[
				[buyAnimal, "chicken"],
				-1				
			],
			-1,
			-1,
			-1
			]


} else if(global.playerLevel >=6 and global.playerLevel < 10) {
	
	//Can buy chickens, cows, and pigs	
	text = ["Hey farmer! I'm Marisa and I can sell you some farm friends. \nWhat kind of animal would you like?",
			["Chicken (200 Gold)", "Cow (500 Gold)", "Pig (800 Gold)", "Nothing"],
			soldLine,
			denyLine
	]
	speakers = [id, o_player, id, id]
	
	if(global.playerGold >= 800) {
		
		nextLine = [0, [2, 2, 2, -1], -1, -1]
		
	} else if (global.playerGold >= 500) {
		
		nextLine = [0, [2, 2, 3, -1], -1, -1]
		
	} else if (global.playerGold >= 200) {
		
		nextLine = [0, [2, 3, 3, -1], -1, -1]
		
	} else {
		
		nextLine = [0, [3, 3, 3, -1], -1, -1]
		
	}
	
	scripts = [ -1, 
			[
				[buyAnimal, "chicken"],
				[buyAnimal, "cow"],
				[buyAnimal, "pig"],
				-1
			],
			-1,
			-1
			]

} else if (global.playerLevel >= 10) {
	//Can buy chickens cows pigs and sheep
	text = ["Hey farmer! I'm Marisa and I can sell you some farm friends. \nWhat kind of animal would you like?",
			["Chicken (200 Gold)", "Cow (500 Gold)", "Pig (800 Gold)","Sheep (1000 Gold)", "Nothing"],
			soldLine,
			denyLine
	]
	speakers = [id, o_player, id, id]
	
	if(global.playerGold >= 1000) {
	
		nextLine = [0, [2, 2, 2, 2, -1], -1, -1]
	
	} else if(global.playerGold >= 800) {
		
		nextLine = [0, [2, 2, 2, 3, -1], -1, -1]
		
	} else if (global.playerGold >= 500) {
		
		nextLine = [0, [2, 2, 3, 3, -1], -1, -1]
		
	} else if (global.playerGold >= 200) {
		
		nextLine = [0, [2, 3, 3, 3, -1], -1, -1]
		
	} else {
		
		nextLine = [0, [3, 3, 3, 3, -1], -1, -1]
		
	}
	
	scripts = [ -1, 
			[
				[buyAnimal, "chicken"],
				[buyAnimal, "cow"],
				[buyAnimal, "pig"],
				[buyAnimal, "sheep"],
				-1
			],
			-1,
			-1
			]
}

