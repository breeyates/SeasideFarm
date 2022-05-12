var hour = o_dayNightCycle.hours

event_inherited()

/*
if(hour >= phases.sunrise and hour < phases.sunset) {
	if(!instance_exists(o_beachboy)) {
		instance_create_layer(global.shaneX, global.shaneY, "Player", npcInst)
	}
	
}
*/


//-------------------Friendship Choices-----------------
if(!talkedToday) {
	
	if(friendshipLevel == 1) {	
		text= [
			"Hey, I'm Shane.",
			["Nice to meet you Shane, I'm Bree", "Do you surf?", "You look like a loser"], 
			"Nice meeting you Bree!",
			"Yeah I do, have been surfing since I was a kid, how did you know?",
			"What's your problem?"		
		];

		speakers = [id, o_player, id, id, id];
		nextLine = [0, [2, 3, 4], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -10]
			],
			-1,
			-1
			]	
			

	} else if (friendshipLevel == 2) {
		text = [
			"Hey Bree! I was just thinking about you. \n Have you ever surfed before?",
			["No, but I'm not opposed to trying!",  "Ew what do I look like?", "I used to but I wasn't very good"],
			"We should surf together sometime, I can teach you!",
			"Didn't know you were that kind of person...",
			"You should get back into it! Weather is always super nice here"
		];
		
		speakers = [id, o_player, id, id, id]
		nextLine = [0, [2, 3, 4], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -10],
				[gainFriendshipXP, id, 5]
			],
			-1,
			-1
			]	
	
	

	} else if (friendshipLevel == 3) {
		text = [
			"Oh it's farmer girl!! I was hoping you would show up today. How are you?", 
			["I'm great! What a beautiful day", "Horrible. My plants didn't sell for much"],
			"That's what I'm saying!",
			"Wow that's a bummer, sorry to hear that"
		];
		
		speakers = [id, o_player, id, id]
		
		nextLine = [0, [2, 3], -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -15]
			],
			-1,
			-1
			]


	} else if (friendshipLevel == 4) {
	
		text = [
			"Hey....",
			["Hi shane what's wrong?", "What a beautiful day!", "Why are you looking so glum?"],
			"My mom just texted me this morning and told me my childhood dog died. \nI'm not sure how to react since I've been with him my whole life...",
			"...",
			["Wow I'm sorry to hear that, is there anything I can do to help?", "That sucks."],
			"No it's okay...thanks for coming to chat. I'll talk to you tomorrow",
			"I guess..."
			
		];
		
		speakers = [id, o_player, id, id, o_player, id, id]
		
		nextLine = [0, [2, 3, 2], 4, -1, [5, 6], -1, -1]
		
		scripts = [ -1, 
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, -20],
				[gainFriendshipXP, id, 10]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -15]
			],
			-1,
			-1
			]
	

	} else if (friendshipLevel == 5) {
		text =[
			"Hey Bree, I was thinking about our chat the other day and I wanted to\napologize for being so gloomy.",
			"You have been nothing but kind coming here each day to talk to me and I\nwant to let you know I appreciate you",
			"From now on I consider us best friends so if you ever need anything you\ncan ask me!",
			["Thanks Shane, I appreciate that", "Best friends with YOU?", "Best friends forever!"],
			"Anytime",
			"Wow I take it back then...",
			"Forever!"
		];

		speakers = [id, id, id, o_player, id, id, id]
		nextLine = [0, 0, 0, [4, 5, 6], -1, -1]
		
		scripts = [
			-1,
			-1, 
			-1, 
			[
				[gainFriendshipXP, id, 15],
				[gainFriendshipXP, id, -20],
				[gainFriendshipXP, id, 20]
			],
			-1,
			-1
		
		];

	}
} else {
	name = " ";
	text = ["You have already talked to this person today. Come back tomorrow."]
	speakers = [id]
	
	nextLine = [0]
	
	scripts = [-1]
	
}


//show_debug_message("Current friendshipXP :" + string(friendshipXP));
//show_debug_message("Current friendship Level :" + string(friendshipLevel));
//show_debug_message("Talked today? " + string(talkedToday));