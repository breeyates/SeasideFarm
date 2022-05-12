var hour = o_dayNightCycle.hours

event_inherited()


//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Idris"
	if(friendshipLevel == 1) {	
		
		text= [
			"Oh hello! I'm Idris the local florist, pleasure to meet you.",
			["Hi Idris, I'm Bree!", "Is that dirt on your clothes?"],
			"Oh! You're the new farmer, what a pleasure!", 
			"Does it bother you?"
		];

		speakers = [id, o_player, id, id];
		nextLine = [0, [2, 3], -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, -5]
			],
			-1,
			-1
			]	
			

	} else if (friendshipLevel == 2) {
		
		var dia = choose(1, 2)
		
		if(dia == 1) {
			text = [
				"Hey Bree! Did you want to learn some tips on how to take care of plants?",
				["Sure", "No thanks, I got it"],
				"Plants grow every night, once they are fully grown you can hold 'K' to \nharvest them! Plants that take a longer time to grow will be worth\nmore money",
				"Maybe next time!"		
			];
			
			speakers = [id, o_player, id, id]
			nextLine = [0, [2, 3], -1]
			
			scripts = [ -1, 
				[
					[gainFriendshipXP, id, 10],
					[gainFriendshipXP, id, 0]
				],
				-1,
				-1
			]
			
		} else if (dia == 2) {
			text = ["Did you know that some plants take longer to grow than others?\nNature is so cool!"];
			speakers = [id]
			nextLine = [-1]
			scripts = [[gainFriendshipXP, id, 5]]

		}
		
	} else if (friendshipLevel == 3) {
		
		text = ["Hey Bree, how is the farm coming?",
		["How do I know when to harvest crops?", "It's good"],
		"When they are fully grown they will you will be able to harvest them by \nhittting 'K'!",
		"Glad to hear it!"		
		];
		
		speakers = [id, o_player, id, id]
		
		nextLine = [0, [2,3], -1, -1]
		
		scripts = scripts = [ -1, 
				[
					[gainFriendshipXP, id, 10],
					[gainFriendshipXP, id, 10]
				],
				-1,
				-1
			]
			
		
	} else if (friendshipLevel == 3) {
		
		text = ["BREE!!!!",
		["WHAT?!", "Uhm can I help you?"],
		"QUICK! Which takes the longest to grow: carrot, hay, or pumpkins?",
		["Carrots", "Hay", "Pumpkins", "Trick question"],
		"That's not correct! Come by again when you think you know the correct answer",
		"CORRECT! Pumpkins take the longest to grow! Oh I just knew you would be \na great addition to our town!"		
		];
		
		speakers = [id, o_player, id, o_player, id, id]
		
		nextLine = [0, [2, 2], 3, [4, 4, 5, 4], -1, -1]
		
		scripts = [-1,
				[
					[gainFriendshipXP, id, 0],
					[gainFriendshipXP, id, 0]
				],
				-1,
				[
					[gainFriendshipXP, id, 0],
					[gainFriendshipXP, id, 0],
					[gainFriendshipXP, id, 80],
					[gainFriendshipXP, id, 0]
				],
				-1,
				-1
		
		]

	} else {
		
		text = ["Greetings! Thank's for answering my question the other day, I \nmade a bet with Ava to see if you knew your stuff!",
		["Uhm, why?", "Did I pass?"],
		"Just curious to see if our special farmer girl knew her crops - You do!",
		"With flying colors, did you want another question?",
		["Sure", "No thank you"],
		"Which plant sells for the most: potatoes, tomatoes, or cabbage?",
		["Potatoes", "Tomatoes", "Cabbages"],
		"Correct! Potatoes sell for the most gold (right behind pumpkins!)",
		"Wrong! Come back and try again tomorrow!"
		];
		
		speakers = [id, o_player, id, id, o_player, id, o_player, id, id]
		
		nextLine = [0, [2,3], -1, 4, [5, -1], 6, [7, 8, 8], -1, -1]
		
		scripts = [ -1,
				[
					[gainFriendshipXP, id, 0],
					[gainFriendshipXP, id, 0]
				],
				-1,
				-1,
				[
					[gainFriendshipXP, id, 20],
					[gainFriendshipXP, id, 0]
				],
				-1,
				[
					[gainFriendshipXP, id, 100],
					[gainFriendshipXP, id, 0],
					[gainFriendshipXP, id, 0]
				],
				-1,
				-1
		
		]
		

	}
	
} else {
	name = " ";
	text = ["You have already talked to this person today. Come back tomorrow."]
	speakers = [id]	
	nextLine = [0]	
	scripts = [-1]	
}
