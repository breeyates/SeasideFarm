event_inherited()


//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Harrison"
	
	
	if(friendshipLevel == 1) {	
		
		text= ["Oh, it's you! Don't you have some low quality items to sell?"];

		speakers = [id];
		nextLine = [0]
		
		scripts = [[gainFriendshipXP, id, 5]];
			

	} else if (friendshipLevel == 2) {
		
		text= ["Can I help you?",
		["What's your problem?", "Do you work at the supermarket?"],
		"I don't enjoy talking to people who work for lame stores is all, nothing \npersonal",
		"I do, are you that stupid that you couldn't tell?"		
		];

		speakers = [id, o_player, id, id];
		nextLine = [0, [2, 3], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, 0]
				
			],
			-1,
			-1
			]
		
	} else if (friendshipLevel == 3) {
		
		text= ["You must really have nothing better to do.",
		["Can we be friends", "You're really ugly", "The things I sell are just as good as yours, if not better"],
		"Ugh, as if I would want to be friends with someone like you",
		"Don't come near me."		,
		"You honestly believe that? I'll just have to see myself!"
		];

		speakers = [id, o_player, id, id, id];
		nextLine = [0, [2, 3, 4], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, -10],
				[gainFriendshipXP, id, -30],
				[gainFriendshipXP, id, 15]
				
			],
			-1,
			-1
			]
		
	} else if (friendshipLevel == 4) {
		
		text= [["Well? Did you check out my store?", "Hey loser"],
		"I did....",
		"Disgusting",
		"And?",
		"You do sell higher quality products that I thought....",
		"But that's all I will say!"				
		];

		speakers = [o_player, id, id, o_player, id, id];
		nextLine = [[1, 2], 3, -1, 0, 0]
		
		scripts = [
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, -20]
				
			],
			-1,
			-1,
			-1,
			-1,
			-1
			]

	} else if (friendshipLevel == 5) {
		
		text= ["Hey....listen I'm sorry for the way I treated you.",
		"I was just intimidated by you moving here and setting up a new store that I \nthought I would lose my job if you were successful",
		"But I see how nice you are and I feel bad for the way I treated you",
		["It's okay, I forgive you", "You're behaviour was extremely rude. Please do \nnot talk to me anymore"],
		"Really?... Thank you Bree, you are really kind",
		"I understand, I will leave you along from now on."
		];

		speakers = [id, id, id, o_player, id, id];
		nextLine = [0, 0, 0, [4, 5], -1, -1]
		
		scripts = [ -1, 
				-1,
				-1,
			[
				[gainFriendshipXP, id, 100],
				[deleteFriend, id]
				
			],
			-1,
			-1
			]
		

	} else if (friendshipLevel = 0) {
		name = "Harrison";
		text = ["..."]
		speakers = [id]	
		nextLine = [0]	
		scripts = [-1]	
	}
	
} else {
	name = " ";
	text = ["You have already talked to this person today. Come back tomorrow."]
	speakers = [id]	
	nextLine = [0]	
	scripts = [-1]	
}
