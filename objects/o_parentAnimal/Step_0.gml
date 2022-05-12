var hour = o_dayNightCycle.hours


if(hour >= phases.sunrise and hour < phases.sunset) {
	
	//Check if it exists
	if(instance_exists(animalInst)) {
			abletoMove = true
			#region Movement / Cols

			if(xMove != 0) {
				var hCol = (place_meeting(x + xMove, y, o_collisionblock) or place_meeting(x + xMove, y, o_player) or place_meeting(x + xMove, y, o_parentAnimal) or place_meeting(x + xMove, y, o_animalcollision))
	
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
				var yCol = (place_meeting(x, y + yMove, o_collisionblock) or place_meeting(x, y + yMove, o_player) or place_meeting(x, y + yMove, o_parentAnimal)  or place_meeting(x, y + yMove, o_animalcollision))
	
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
					image_index = 0
					image_speed = 0
				} else if down {
					sprite_index = idleDown
					image_index = 0
					image_speed = 0
				} else if right {
					sprite_index = idleRight
					image_index = 0
					image_speed = 0
				} else if left {
					sprite_index = idleLeft
					image_index = 0
					image_speed = 0
				}
		
		
	}
	#endregion
	
	} 

} else {

 	abletoMove = false;	
	sprite_index = sleeping
	image_speed = 0.6
	xMove = 0
	yMove = 0
	
	
}


