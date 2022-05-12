event_inherited()


//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Joselyn"
	
	if(friendshipLevel == 1) {	
		
		text= ["These dang kids always leaving a mess!",
		["Hello?", "..."],
		"I do not get paid enough to be a maid too!",
		["Hello??", "...??"],
		"She doesn't seem to hear me"
		];

		speakers = [id, o_player, id, o_player, o_player];
		nextLine = [0, [2, 2], 3, [4,4], -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 5]
			],
			-1,
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 5]
			],
			-1
			]	
			

	} else if (friendshipLevel == 2) {

		text = [["Hello?", "Pay attention more"],
		"OH!",
		"Hello!! I didn't see you there!! You must be Bree, the new farmer",
		["Yep, that's me.", "No idea who that is"],
		"Nice to meet you! I'm Joselyn I'm Sandcrest Bay's one and only teacher!",
		"....hopefully not for too much longer!",
		"Oh! Silly me I must have mixed you with someone else"		
		];
		
		speakers = [o_player, id, id, o_player, id, id, id]
		
		nextLine = [[1, -1], 2, 3, [4, 6], 5, -1, -1]
		
		scripts = [
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, -20]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, 0]
			],
			-1,
			-1,
			-1
			]	
		
	} else if (friendshipLevel == 3) {
		
		text = ["Hello again! I am fully aware today yep!",
		["Is that a coffee stain on your shirt?", "Are you drunk?"],
		"Yep! Pretty impressive there's only one stain considering I drank 8 cups today!",
		"Are you out of your mind?",
		["Is that healthy?", "Are you okay?"],
		"Can't help it, I don't get that much sleep these days...",
		"Well I'm off! Have to clean up puke stains in the bathroom!",
		"Nope!"
		];
		
		speakers = [id, o_player, id, id, o_player, id, id, id]
		
		nextLine = [0, [2,3], 4, -1, [5,7], 6, -1, -1]
		
		scripts = [-1,
			[
				[gainFriendshipXP, id, 30],
				[gainFriendshipXP, id, -40]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 15],
				[gainFriendshipXP, id, 15]
			],
			-1,
			-1,
			-1
		]
		
	} else {
		
		text = ["Howdy friend! (Is it okay if I call you that?)",
		"You just always come to talk to me and I think we can be called friends \nnow! What do you think??",
		["Absolutely!", "No thank you I think you're weird"],
		"AMAZING!!!",
		"I mean- great! Come visit me whenever!",
		"I understand I am a bit loco hehe!"	
		];
		
		speakers = [id, id, o_player, id, id, id]
		
		nextLine = [0, 0, [3,5], 4, -1, -1]
		
		scripts = [-1,
		-1,
		[
				[gainFriendshipXP, id, 50],
				[gainFriendshipXP, id, -70]
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
