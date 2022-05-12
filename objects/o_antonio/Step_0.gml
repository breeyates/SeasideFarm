var hour = o_dayNightCycle.hours


if(hour >= phases.sunset) {
	abletoMove = true;
	dayComplete = false;
	
	//Check if it exists
	if(instance_exists(npcInst)) {
				
			#region Movement / Cols
		
			if(xMove != 0) {
				var hCol = (place_meeting(x + xMove, y, o_collisionblock) or place_meeting(x + xMove, y, o_player) or place_meeting(x + xMove, y, o_parentNPC))
	
				if (hCol) {
					repeat(abs(xMove)) {
						if(!place_meeting(x + sign(yMove), y, o_collisionblock)) {
							//show_debug_message("Made it to sign(xMove))")
							x += sign(xMove)		
						} else {
							break;
						}
					}
		
					xMove = 0;
				}
			}


			if(yMove != 0) {
				var yCol = (place_meeting(x, y + yMove, o_collisionblock) or place_meeting(x, y + yMove, o_player) or place_meeting(x, y + yMove, o_parentNPC))
	
				if (yCol) {
					repeat(abs(yMove)) {
						if(!place_meeting(x, y + sign(yMove), o_collisionblock)) {
							//show_debug_message("Made it to sign(yMove))")
							y += sign(yMove)
						} else {
							break;
						}
					}
		
					yMove = 0;
				}
			}

		//show_debug_message("Applying movement")
		x += xMove
		y += yMove

		#endregion
		
			#region Animations
			if (xMove > 0) {
				sprite_index = walkRight
				image_speed = imgspd
	
				down = false;
				up = false;
				right = false;
				left = true;
			}
	
	
			else if (xMove < 0) {
				sprite_index = walkLeft
				image_speed = imgspd
	
				down = false;
				up = false;
				right = true;
				left = false;
			}
	
	
			else if (yMove > 0) {
				sprite_index = walkDown
				image_speed = imgspd
	
				down = true;
				up = false;
				right = false;
				left = false;
			}
	
	
				else if (yMove < 0) {
				sprite_index = walkUp
				image_speed = imgspd
	
				down = false;
				up = true;
				right = false;
				left = false;
			}

			if (xMove == 0 and yMove == 0) {		
	
				if up {
					sprite_index = idleUp
					image_index = 1
					image_speed = 0
				} else if down {
					sprite_index = idleDown
					image_index = 0
					image_speed = 0
				} else if right {
					sprite_index = idleRight
					image_index = 3
					image_speed = 0
				} else if left {
					sprite_index = idleLeft
					image_index = 2
					image_speed = 0
				}

				
		
		
	}
	#endregion
		
	} else {
		//show_debug_message("No NPC exsists")
		instance_create_layer(startX, startY, "Player", npcInst)
	}

} else if (hour >= phases.sunrise and hour < phases.daytime and !dayComplete) {
	abletoMove = false;	
		
	move_towards_point(destinationX, destinationY, spd) 
	
	#region Animations for heading home
	if(destinationX > x) {
		sprite_index = walkRight
		image_speed = imgspd
	} else if (destinationX < x) {
		sprite_index = walkLeft
		image_speed = imgspd
	} else if (destinationY < y) {
		sprite_index = walkUp
		image_speed = imgspd
	} else if (destinationY > y) {
		sprite_index = walkDown
		image_speed = imgspd
	}
	
	#endregion
	
	//Destroy instance once it reaches destination
	if(abs(x - destinationX) < 1 and abs(y - destinationY) < 1) {
		//show_debug_message("Destroying NPCinst")
		instance_destroy(npcInst);
		dayComplete = true;
	}
	
} else {
	
	//show_debug_message("Object should not be here right now")
	
	if(instance_exists(npcInst)) {
		instance_destroy(npcInst);
	}
	
	abletoMove = false;
	x = -10
	y = -10

} 



//-------------------Friendship Choices-----------------
if(!talkedToday) {
	if(friendshipLevel == 1) {			
		
		text= [
			"..."
		];
		speakers = [id];
		nextLine = [-1]		
		scripts = [gainFriendshipXP, id, 4]
			

	} else if (friendshipLevel == 2) {
		text= [
			"Do you need something?"
		];

		speakers = [id];
		nextLine = [-1]		
		scripts = [[gainFriendshipXP, id, 7]]
		
	} else if (friendshipLevel == 3) {
		text= [
			"Why do you keep coming to talk to me?",
			["I am curious why you are always here", "I want to annoy you"],
			"It's none of your business.",
			"Please leave me alone"
		];

		speakers = [id, o_player, id, id];
		nextLine = [0, [2, 3], -1, -1]		
		scripts = [ -1,
			[
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -20]
			],
			-1,
			-1
		]
		
	} else if (friendshipLevel == 4) {
		antonioName = "Antonio"
		name = "Antonio"
			
		text = [
			"I apologize for acting out the other day. I am not used to others \ninteracting with me.",
			"My name is Antonio. Please forgive my previous behaviour",
			["Why are you always out here at night?", "It's okay.", "You're an asshole."],
			"My wife died a few years prior. I do not think the villagers wish to see \na man up at the tombstones each day, so I come here when everyone \nis sleeping to mourn.",
			"Please do not talk to me...",
			["I am sorry for your loss", "The villagers do not mind, you should grieve during the day."],
			"Thank you for your kindness",
			"I appreciate it, but I have become accustomed to being awake at night. \nI need to say my condolences, thank you for chatting with me"			
		];
		
		speakers = [id, id, o_player, id, id, o_player, id, id]
		
		nextLine = [0, 0, [3, -1, 4], 5, -1, [6, 7], -1, -1]
		
		scripts = [
			-1,
			-1,
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, 10],
				[gainFriendshipXP, id, -50]
			],
			-1,
			-1,
			[
				[gainFriendshipXP, id, 5],
				[gainFriendshipXP, id, 15]
			],
			-1,
			-1		
		
		]
		

	} else if (friendshipLevel == 5) {
		antonioName = "Antonio"
		name = "Antonio"
		
		text = [
			"Hello Bree! I have been feeling much better since our last chat. Perhaps I will \ntry coming out during the day sometimes now",
			["That's great! I can introduce you to some of the villagers", "Glad to hear it"],
			"It might be a while before I am ready for that...but thank you, it means a lot \nto me", 
			["Whenever you are ready", "Sooner the better"],
			"Thank you, friend",
			"I'd prefer to take my time..."			
		]
		
		speakers = [id, o_player, id, o_player, id, id]
		
		nextLine = [0, [2, -1], 0, [4, 5], -1, -1]
		
		scripts = [ 
			-1,
			[
				[gainFriendshipXP, id, 20],
				[gainFriendshipXP, id, 0]
			],
			-1,
			[
				[gainFriendshipXP, id, 15],
				[gainFriendshipXP, id, -15]
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

//----------------Friendship-------------------
if(friendshipXP >= friendshipLevel * 20) {
	friendshipXP = 0
	friendshipLevel++;
} else if (friendshipXP < -5) {
	friendshipXP = 0
	friendshipLevel--;
}

if(friendshipLevel >= 5) {
	friendshipLevel = 5
}

switch(friendshipLevel) {
	case 1:
		friendshipTitle = "Stranger"
		break;
	case 2:
		friendshipTitle = "Acquaintance"
		break;
	case 3:
		friendshipTitle = "Friend"
		break;
	case 4:
		friendshipTitle = "Good Friend"
		break;
	case 5:
		friendshipTitle = "Best Friend"
		break;
}
