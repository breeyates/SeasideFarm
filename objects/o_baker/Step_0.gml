var hour = o_dayNightCycle.hours

event_inherited()

//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Ava"
	if(friendshipLevel == 1) {	
		
		text= [
			"Hiya! Are you looking to buy some cookies? Maybe a cake? Ooooo or some \ncupcakes?",
			["No I'm just stopping by.", "I'm Bree. Nice to meet you", "That all sounds good!"],
			"Oh well come by again!",
			"Oh our new farmer girl! Well aren't you cute. I'm Ava, \npleasure to meet ya!",
			"Best in town! No one makes a better cinnamon roll than Ava!"
		];

		speakers = [id, o_player, id, id, id];
		nextLine = [0, [2, 3, 4], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 0],
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 10]
				
			],
			-1,
			-1,
			-1
			]
			
			

	} else if (friendshipLevel == 2) {
		
		text = ["Heyo! Sorry Bree, can't chat today. I'm working on a huge order!"];
		
		speakers = [id]
		
		nextLine = [-1]
		
		scripts = [[gainFriendshipXP, id, 10]]
		
		

	} else if (friendshipLevel == 3) {
		
		text = ["Hey Bree!",
		["Hi Ava.", "Is that flour on your shirt?"],
		"Yep! Been testing some new recipes recently, not going too well though...",
		"But that's okay! Ava can do anything if she puts her mind to it"
		];
		
		
		speakers = [id, o_player, id, id]
		
		nextLine = [0, [-1, 2], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 15]
				
			],
			-1,
			-1
			]
		
		
	} else if (friendshipLevel == 4) {
		
		text = ["Bree! I got that new recipe figured out from the other day!",
		["Can I try it?", "How did it turn out?"],
		"No can do! My sweets are only for paying customers...(sorry)",
		"Perfect! The blueberry jam really balances out the tartness of the puff \npastry. If I were to make it again I might add a bit of powdered sugar...oh! \nOr some-",
		"She forgot that I'm here"
		];
		
		speakers = [id, o_player, id, id, o_player]
		
		nextLine = [0, [2, 3], -1, 0, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, 15]
				
			],
			-1,
			-1,
			-1
			]

	} else if (friendshipLevel == 5) {
		
		text = ["Bree! Have you ever realized that we're store neighbors?",
		["Two peas in a pod!", "Store neighbors?"],
		"Exactly!! So if you ever need anything please let me know! I consider you a \nclose friend so please rely on me from now on!",
		"Yep! Your store is about 20 pixels away from mine!",
		"And since we're such great friends now if you need anything please let me know!"
		]
		
		speakers = [id, o_player, id, id, id]
		
		nextLine = [0, [2,3], -1, 0, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, 15]
				
			],
			-1,
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
