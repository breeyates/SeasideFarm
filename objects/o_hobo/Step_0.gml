 event_inherited()


//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Marko"
	if(friendshipLevel == 1) {	
		
		text = ["Oh, sorry I will get out of your way"];
		
		speakers = [id]
		
		nextLine = [-1]
		
		scripts = [[gainFriendshipXP, id, 10]]
		

	} else if (friendshipLevel == 2) {	
		
		text= [
			"Am I bothering you? Sorry I'll go somewhere else.",
			["You weren't bothering me at all", "Thanks"],
			"...? But normally everyone says I bother them",
			"Sorry...",
			["Who says that?", "Well everyone else sucks."],
			"Don't worry about it. Thanks for talking to me.",
			"..."
		];

		speakers = [id, o_player, id, id, o_player, id, id];
		nextLine = [0, [2, 3], 4, -1, [5,6], -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, 5]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 0]
			],
			-1,
			-1
			]	
		
	} else if (friendshipLevel == 3) {
		
		text = [["Hi Marko", "Get out of my way"],
		"Hello Bree. It is very nice out today",
		"Of course, I'm sorry...",
		["What are you doing?", "It's a nice day to be outside"],
		"Me? I am gathering some berries to have for a snack. I will get out of \nyour space now.",
		"I suppose"
		];
		
		speakers = [o_player, id, id, o_player, id, id]
		
		nextLine = [[1,2], 3, -1, [4,5], -1, -1]
		
		scripts = [[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -50]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 5]
			],
			-1,
			-1		
		]
		
	} else if (friendshipLevel == 4) {
		
		text = ["Hello Bree, I wanted to ask you a favor",
		["Yes?", "I'm busy right now"],
		"I was wondering if you had any advice on how to approach the villagers. \nAfter meeting you I think I am now ready to try to show them I am not so scary",
		["Be yourself", "Maybe some nicer clothes?...", "I think you should stay here and not bother them"],
		"I'm not sure that will work. Who I am not does not seem to work... I will \nfigure something out on my own. Thank you for stopping by",
		"Oh, I did not think of something like that. Okay I will try looking for new \nclothes.",
		"Maybe you're right, there must be a good reason why they don't want to see me."	
		];
		
		speakers = [id, o_player, id, o_player, id, id, id]
		
		nextLine = [0, [3, -1], 3, [4,5,6], -1, -1, -1]
		
		scripts = [ -1,
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, 0]
			],
			-1,
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, 30],
				[gainFriendshipXP, id, -50],
			],
			-1,
			-1,
			-1
		
		]	
		

	} else if (friendshipLevel == 5) {
		
			
		text = ["Bree, I was hoping you would stop by",
		"I wanted to tell you that I look forward to talking to you each day. \nNo one has come to speak to me as much as you have.",
		"Would it be alright if I consider you my friend now?",
		["Absolutely not.", "Yes of course, we can be great friends!"],
		"Oh perhaps I misunderstood your intentions...",
		"Wonderful! I am so happy"
		];
		
		speakers = [id, id, id, o_player, id, id]
		
		nextLine = [0, 0, 0, [4,5], -1, -1]
		
		scripts = [ -1,
		-1,
		-1,
			[
				[gainFriendshipXP, id, -50],
				[gainFriendshipXP, id, 100]
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
