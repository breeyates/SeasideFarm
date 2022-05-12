event_inherited()


//-------------------Friendship Choices-----------------
if(!talkedToday) {
	name = "Flynn"
	if(friendshipLevel == 1) {	
		
		text= ["Heya, you must be the new farmer",
		["Yes that's me.", "No idea who you are talking about"],
		"Nice to meet ya! Name's Flynn, I'll be in front of the cave each day if \nyou wanna chat",
		"Apologies! Must be thinking of someone else..."			
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
			

	} else if (friendshipLevel == 2) {
		
		var dia = choose(1, 2, 3)
		
		if(dia == 1) {
			text = ["Diamonds sell more than other gems, but that means they are \nharder to find!"]
			
			speakers = [id]
			
			nextLine = [-1]
			
			scripts = [[gainFriendshipXP, id, 5]]
		} else if(dia == 2) {
			text = ["Gems randomly spawn in the cave, take a peek yourself if you \n don't believe me!"]
			
			speakers = [id]
			
			nextLine = [-1]
			
			scripts = [[gainFriendshipXP, id, 5]]
		} else {
			text = ["Ores become gems eventually, but they aren't worth as much as \nthe gem itself"]
			
			speakers = [id]
			
			nextLine = [-1]
			
			scripts = [[gainFriendshipXP, id, 5]]
		}
		
		
	} else if (friendshipLevel == 3) {
		
		text = ["What is that smell?",
		"What smell?",
		["The burning smell", "The disgusting B.O"],
		"Oh haha! My nose ain't used to smelling it so I couldn't tell!",
		"That's gonna be a new sword, customer ordered brand new shiny one. Been \nworking on it this past week but it's almost done now.",
		"Guess I do have to shower haha....",
		"You can make swords?",
		"Do I look like I make sandwichs?",
		"HA! I'm just playing with ya'..."		
		];
			
		speakers = [o_player, id, o_player, id, id, id, o_player, id, id];
			
		nextLine = [0, 0, [3,4], 0, 6, -1, 0, 0, -1]
			
		scripts = [ -1, 
			-1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -15]
			],
			-1,
			-1,
			-1,
			-1,
			-1,
			-1
			]	
		
	} else if ((friendshipLevel == 4) or (friendshipLevel == 5)) {
		
		text = ["Kid, I been debating on telling you this for a while but I wanted \nto let you know your father was a great man.",
		["You knew my dad?", "I never got to speak to him much"],
		"Yes mamm, we was both raised here together. Made lots of memories. Hazel \nwas like a second mom to me.",
		"I'm sorry to hear that",
		["The old fart?", "What was he like?"],
		"Watch your tongue.",
		"Adventerous. Must be where you got it from. Moving to a new place so aburptly \nwould have been something he would have done...never change kid."
		
		
		];
			
		speakers = [id, o_player, id, id, o_player, id, id]
			
		nextLine = [0, [2, 3], 4, -1, [5,6], -1, -1]
			
		scripts = [ -1,
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, 5]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 15],
				[gainFriendshipXP, id, -30]
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
