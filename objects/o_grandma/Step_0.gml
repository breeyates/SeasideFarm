event_inherited()



//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Hazel"
	if(friendshipLevel == 1) {	
		
		text= [
			"Hi honey, welcome back to Sandcrest Bay. \nIt's been a long while since I've seen you! Oh you are so grown up...",
			["...?", "Who are you?", "You too granny!"],
			"Oh dear you don't remember me! Well I can't blame you it has been \na while. I'm your grandma! Your father left this little town with you \nwhen you were 3 and hasn't come back since. ",
			["My dad was from here?", "Nice meeting you grandma!"],
			"He was born and raised here dear. The town has been bustling since you \ncame back. We haven't had a farmer since your father left",
			["I will do my best!"]
			
		];

		speakers = [id, o_player, id, o_player, id, o_player];
		nextLine = [0, [2, 2, -1], 0, [4, -1], 0, [-1]]
		
		scripts = [ -1, 
					[-1, -1, -1],
					-1,
					[
						[gainFriendshipXP, id, 5],
						[gainFriendshipXP, id, 0]		
					],
					-1,
					[gainFriendshipXP, id, 5]
			]
			
			

	} else if (friendshipLevel == 2) {
		
		text = ["Hello again darling! Did you have any questions for me?",
		["How do I pick up items?", "How do I sell items?", "How do I see my items?", "No"],
		"Pick up items by pressing 'K'!", 
		"You can sell items by going into your store and pressing 'T' at the \nregister. Just click on the items you want to sell and you will get the \nmoney the next morning",
		"To see items press 'I' to open your inventory."	
		];
		
		speakers = [id, o_player, id, id, id]
		
		nextLine = [0, [2,3,4], -1, -1, -1]
		
		scripts = [ -1,
					[
						[gainFriendshipXP, id, 5],
						[gainFriendshipXP, id, 5],
						[gainFriendshipXP, id, 5],
						[gainFriendshipXP, id, 5]
						
					],
					-1,
					-1,
					-1		
		];
		
		
	} else if (friendshipLevel == 3) {
		
		text = ["....",
		["Granny?", "BOO"],
		"Oh hello dear! I didn't realize you were here!",
		"AH! Please don't do that Bree, I'm not too quick on my feet...",
		["Can you tell me more about my father?", "I was just stopping by to say hi"],		
		"Not today dear...my joints are not feeling to good today",
		"How sweet"
		
		];
		
		speakers = [id, o_player, id, id, o_player, id, id]
		
		nextLine = [0, [2, 3], 4, -1, [5,6], -1, -1]
		
		scripts = [ -1,
					[
						[gainFriendshipXP, id, 10],
						[gainFriendshipXP, id, -15]
						
					],
					-1,
					-1,
					[
						[gainFriendshipXP, id, 10],
						[gainFriendshipXP, id, 10]
						
					],
					-1,
					-1
		];
		
	} else if (friendshipLevel == 4) {
		
		text = ["Hello honey, how is the store doing?",
		["Great!", "Difficult"],
		"That's good to hear! Make sure to keep selling things, the higher your \nlevel the more things sell for!",
		"I'm sorry to hear that!"		
		];
		
		speakers = [id, o_player, id, id]
		
		nextLine = [0, [2,3], -1, -1]
		
		scripts = [-1,
				[
					[gainFriendshipXP, id, 30],
					[gainFriendshipXP, id, 30]
						
				],
				-1,
				-1
		]

	} else if (friendshipLevel == 5) {
		
		text = ["Hello Grandma Hazel",
		"....",
		"Hello?",
		".....",
		["HELLO?", "Ok, goodbye"],
		"Oh! Dear forgive me I seemed to doze off. Did you need me?",
		["Just dropping by", "Do you need me to walk you home?", "Is your hearing aid dead or something"],
		"Such a sweet soul, it is always so nice to hear from you darling.",
		"I'm alright dear, let me just get some steps in and I'll be awake in no time!",
		"What?"
		];
		
		speakers = [o_player, id, o_player, id, o_player, id, o_player, id, id, id]
		
		nextLine = [0, 0, 0, 0, [5, -1], 6, [7, 8, 9], -1, -1, -1]
		
		scripts = [ -1,
			-1,
			-1,
			-1,
				[
					[gainFriendshipXP, id, 40],
					[gainFriendshipXP, id, 0]
						
				],
				-1,
				[
					[gainFriendshipXP, id, 30],
					[gainFriendshipXP, id, 20],
					[gainFriendshipXP, id, -50]
						
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


show_debug_message("Hazel XP: " + string(friendshipXP))
