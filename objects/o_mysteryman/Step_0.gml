event_inherited()

//-------------------Friendship Choices-----------------
if(!talkedToday) {
	if(friendshipLevel == 1) {			
		
		text= [
			"..."
		];

		speakers = [id];
		nextLine = [-1]		
		scripts = [[gainFriendshipXP, id, 2]]
			

	} else if (friendshipLevel == 2) {
		text= [
			"Do you need something?"
		];

		speakers = [id];
		nextLine = [-1]		
		scripts = [[gainFriendshipXP, id, 5]]
		
	} else if (friendshipLevel == 3) {
		text= [
			"Why do you keep coming to talk to me?",
			["I am curious why you are always here", "I want to annoy you"],
			"It's none of your business.",
			"Please leave me alone"
		];

		speakers = [id, o_player, id, id];
		nextLine = [-1, [2, 3], -1]		
		scripts = [ -1,
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -20]
			],
			-1,
			-1
		]
		
	} else if (friendshipLevel == 4) {
		name = "Antonio"
		//Fill out

	} else if (friendshipLevel == 5) {
		//Fill out
		

	}
	
} else {
	name = " ";
	text = ["You have already talked to this person today. Come back tomorrow."]
	speakers = [id]	
	nextLine = [0]	
	scripts = [-1]	
}
