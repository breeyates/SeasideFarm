//WHY DOES IT NOT HAPPEN WHEN IM IN THE ROOM PLEASE
var hour = o_dayNightCycle.hours


if(hour >= phases.sunrise and hour < phases.sunset) {

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

} else if ((hour >= phases.sunset and hour < phases.night) and !dayComplete) {
	abletoMove = false;	
	
	//show_debug_message("Should be heading home")
		
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
		
		instance_destroy(npcInst);
		dayComplete = true;
	}
	
} else {
	
	x = destinationX
	y = destinationY
	
	if(instance_exists(npcInst)) {
		instance_destroy(npcInst);
	}
	
	abletoMove = false;
	x = -10
	y = -10
} 


//----------------Friendship-------------------
if(friendshipXP >= friendshipLevel * 15) {
	friendshipXP = 0
	friendshipLevel++;
} else if (friendshipXP < -5) {
	friendshipXP = 0
	friendshipLevel--;
}

if(friendshipLevel >= 5) {
	friendshipLevel = 5
} else if (friendshipLevel = -1) {
	friendshipTitle = "Not speaking"
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

